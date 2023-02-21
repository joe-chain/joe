package decorators

import (
	"cosmossdk.io/errors"
	"github.com/cosmos/cosmos-sdk/codec"
	sdk "github.com/cosmos/cosmos-sdk/types"

	"github.com/cosmos/cosmos-sdk/x/authz"
	govkeeper "github.com/cosmos/cosmos-sdk/x/gov/keeper"
	govtypes "github.com/cosmos/cosmos-sdk/x/gov/types/v1"
)

var DefaultIsAppSimulation = false

type GovPreventNoAndAbstainDecorator struct {
	govKeeper govkeeper.Keeper
	cdc       codec.BinaryCodec
}

func NewGovPreventNoAndAbstainDecorator(cdc codec.BinaryCodec, govKeeper govkeeper.Keeper) GovPreventNoAndAbstainDecorator {
	return GovPreventNoAndAbstainDecorator{
		govKeeper: govKeeper,
		cdc:       cdc,
	}
}

func (gpnabd GovPreventNoAndAbstainDecorator) AnteHandle(
	ctx sdk.Context, tx sdk.Tx,
	simulate bool, next sdk.AnteHandler,
) (newCtx sdk.Context, err error) {
	if DefaultIsAppSimulation {
		return next(ctx, tx, simulate)
	}

	if err = gpnabd.checkVoteMsg(ctx, tx.GetMsgs()); err != nil {
		return ctx, err
	}

	return next(ctx, tx, simulate)
}

func checkVoteOptions(option govtypes.VoteOption) error {
	switch option {
	case govtypes.OptionYes:
		return nil
	case govtypes.OptionNoWithVeto:
		return nil
	default:
		return errors.Wrapf(errors.Error{},
			"only YES and NO_WITH_VETO votes are allowed.",
		)
	}
}

func (gpnabd GovPreventNoAndAbstainDecorator) checkVoteMsg(ctx sdk.Context, msgs []sdk.Msg) error {
	validMsg := func(m sdk.Msg) error {
		if msg, ok := m.(*govtypes.MsgVote); ok {
			if err := checkVoteOptions(msg.Option); err != nil {
				return err
			}
		}
		if msg, ok := m.(*govtypes.MsgVoteWeighted); ok {
			for _, option := range msg.Options {
				if err := checkVoteOptions(option.Option); err != nil {
					return err
				}
			}
		}
		return nil
	}

	for _, m := range msgs {
		var innerMsg sdk.Msg
		if msg, ok := m.(*authz.MsgExec); ok {
			for _, v := range msg.Msgs {
				err := gpnabd.cdc.UnpackAny(v, &innerMsg)
				if err != nil {
					return errors.Wrapf(errors.Error{}, "cannot unmarshal authz exec msgs")
				}

				err = validMsg(innerMsg)
				if err != nil {
					return err
				}
			}
		} else {
			err := validMsg(m)
			if err != nil {
				return err
			}
		}
	}

	return nil
}
