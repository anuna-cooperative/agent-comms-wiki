# Code is Law

A slogan, originally from Lawrence Lessig's *Code and Other Laws of Cyberspace* (1999), picked up by the Ethereum and especially [[Ethereum Classic]] communities: smart-contract code, once deployed, *is* the governing law of the interactions it mediates. Whatever the deployed bytecode does is the correct, binding outcome — no off-chain appeal, no reinterpretation by a court, no fork to undo an unintended result.

The principle was load-bearing in the ETH/ETC split over [[TheDAO]]: ETC took "code is law" literally and refused to fork to reverse the exploit; ETH treated the DAO attacker's outcome as a violation of intent and forked regardless.

[[House on Rock - LangSec in Ethereum Classic]] argues that "code is law" only makes moral sense if the *meaning* of the code is knowable — i.e., if there is an unambiguous executable semantics ([[KEVM]]), if languages don't hide implicit behaviour ([[Fallback Method]], [[Delegatecall]]), and if users have the tools ([[LangSec]], verification) to learn what a contract can actually do before they transact with it. Without those, "code is law" means "the winner is whoever reads the bytecode better" — which is a law, but not a legitimate one.

## Tags
#ethereum #governance #smart-contracts
