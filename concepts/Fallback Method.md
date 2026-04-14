# Fallback Method

In Solidity, the unnamed function a contract invokes when it receives a call whose signature doesn't match any declared method (or when it receives plain Ether). Prior to Solidity 0.6 it was `function() { ... }`; since 0.6 it is split into `fallback()` and `receive()`.

Fallback methods are a canonical Solidity foot-gun: they execute code on *every* unknown call, including calls from untrusted counterparties, and they run in a context where the caller's identity, the amount of Ether received, and the remaining gas are easy to misreason about. The DAO reentrancy exploit ([[TheDAO]]) and several Parity-wallet incidents ([[Parity Multisig]]) turned on fallback-method behaviour.

[[House on Rock - LangSec in Ethereum Classic]] cites the fallback method as a language design that hides implicit behaviour — the opposite of what a [[LangSec]] approach prescribes.

## Tags
#solidity #smart-contracts #langsec
