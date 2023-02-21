package ante

import (
	sdk "github.com/cosmos/cosmos-sdk/types"
	// sdkerrors "github.com/cosmos/cosmos-sdk/types/errors"
	"github.com/cosmos/cosmos-sdk/x/auth/ante"
	govkeeper "github.com/cosmos/cosmos-sdk/x/gov/keeper"
	paramtypes "github.com/cosmos/cosmos-sdk/x/params/types"
	ibcante "github.com/cosmos/ibc-go/v5/modules/core/ante"
	ibckeeper "github.com/cosmos/ibc-go/v5/modules/core/keeper"

	gaiafeeante "github.com/cosmos/gaia/v8/x/globalfee/ante"
	decorators "github.com/reecepbcups/joe/app/decorators"

	codec "github.com/cosmos/cosmos-sdk/codec"

	feeshareante "github.com/CosmosContracts/juno/v13/x/feeshare/ante"
	feesharekeeper "github.com/CosmosContracts/juno/v13/x/feeshare/keeper"

	"cosmossdk.io/errors"
)

// https://github.com/cosmos/gaia/blob/main/ante/ante.go

// HandlerOptions extend the SDK's AnteHandler options by requiring the IBC
// channel keeper.
type HandlerOptions struct {
	ante.HandlerOptions
	IBCkeeper            *ibckeeper.Keeper
	BypassMinFeeMsgTypes []string
	GlobalFeeSubspace    paramtypes.Subspace
	StakingSubspace      paramtypes.Subspace

	Cdc       codec.BinaryCodec
	GovKeeper govkeeper.Keeper

	// FeeShare
	FeeShareKeeper feesharekeeper.Keeper
	BankKeeperFork feeshareante.BankKeeper
}

func NewAnteHandler(opts HandlerOptions) (sdk.AnteHandler, error) {
	if opts.AccountKeeper == nil {
		// return nil, errors.Wrap(errors.Error{}, "account keeper is required for AnteHandler")
		return nil, errors.Wrap(errors.Error{}, "account keeper is required for AnteHandler")
	}
	if opts.BankKeeper == nil {
		return nil, errors.Wrap(errors.Error{}, "bank keeper is required for AnteHandler")
	}
	if opts.SignModeHandler == nil {
		return nil, errors.Wrap(errors.Error{}, "sign mode handler is required for ante builder")
	}
	if opts.IBCkeeper == nil {
		return nil, errors.Wrap(errors.Error{}, "IBC keeper is required for middlewares")
	}
	if opts.GlobalFeeSubspace.Name() == "" {
		return nil, errors.Wrap(errors.Error{}, "globalfee param store is required for AnteHandler")
	}

	sigGasConsumer := opts.SigGasConsumer
	if sigGasConsumer == nil {
		sigGasConsumer = ante.DefaultSigVerificationGasConsumer
	}

	anteDecorators := []sdk.AnteDecorator{
		ante.NewSetUpContextDecorator(), // outermost AnteDecorator. SetUpContext must be called first
		ante.NewExtensionOptionsDecorator(opts.ExtensionOptionChecker),
		ante.NewValidateBasicDecorator(),
		ante.NewTxTimeoutHeightDecorator(),
		ante.NewValidateMemoDecorator(opts.AccountKeeper),
		ante.NewConsumeGasForTxSizeDecorator(opts.AccountKeeper),
		decorators.NewGovPreventNoAndAbstainDecorator(opts.Cdc, opts.GovKeeper),
		gaiafeeante.NewFeeDecorator(opts.BypassMinFeeMsgTypes, opts.GlobalFeeSubspace, opts.StakingSubspace),
		// decorators.NewGovPreventNoAndAbstainDecorator(opts.)
		// if opts.TxFeeCheck is nil,  it is the default fee check
		ante.NewDeductFeeDecorator(opts.AccountKeeper, opts.BankKeeper, opts.FeegrantKeeper, opts.TxFeeChecker),
		feeshareante.NewFeeSharePayoutDecorator(opts.BankKeeperFork, opts.FeeShareKeeper),
		ante.NewSetPubKeyDecorator(opts.AccountKeeper), // SetPubKeyDecorator must be called before all signature verification decorators
		ante.NewValidateSigCountDecorator(opts.AccountKeeper),
		ante.NewSigGasConsumeDecorator(opts.AccountKeeper, sigGasConsumer),
		ante.NewSigVerificationDecorator(opts.AccountKeeper, opts.SignModeHandler),
		ante.NewIncrementSequenceDecorator(opts.AccountKeeper),
		// todo check
		ibcante.NewRedundantRelayDecorator(opts.IBCkeeper),
	}

	return sdk.ChainAnteDecorators(anteDecorators...), nil
}
