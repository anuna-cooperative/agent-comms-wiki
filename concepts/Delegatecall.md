# Delegatecall

An EVM opcode that invokes code at another address **in the caller's storage context**. The called bytecode can read and write the caller's storage, spend the caller's Ether, and see the caller's `msg.sender`. In effect, `delegatecall` is a naked `eval`: whoever controls the target address controls the caller's state.

The opcode exists to enable library patterns and upgradable proxy contracts, but its semantic reach makes it the sharpest available knife in Solidity. The July 2017 Parity multisig wallet freeze ([[Parity Multisig]]) was triggered by an untrusted actor invoking a library's initializer via `delegatecall`, taking ownership of the library, and then self-destructing it — rendering every wallet that delegated to it unusable and freezing ~$280M of Ether.

[[House on Rock - LangSec in Ethereum Classic]] lists `delegatecall` with the [[Fallback Method]] as examples of implicit behaviour incompatible with [[LangSec]]: the call site doesn't locally express what the code can do.

## Tags
#solidity #evm #smart-contracts #langsec
