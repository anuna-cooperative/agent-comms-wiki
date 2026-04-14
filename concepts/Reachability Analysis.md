# Reachability Analysis

A family of [[Static Analysis]] techniques that decide (or approximate) whether a given program point or state is reachable from a given start state. In finite-state models (as in model checking), reachability is decidable; on arbitrary Turing-complete programs, reachability of an *arbitrary semantic condition* is undecidable ([[Rice's Theorem]]), so practical tools restrict to abstract domains or bounded horizons.

Reachability analysis answers the foundational question of safety verification: "can the program enter a bad state?" For smart contracts, this includes "can `selfdestruct` be invoked by an untrusted caller?", "can invariant X be violated?", "is this branch reachable?". [[KEVM]] and similar executable-semantics tools enable reachability analysis over the EVM.

## Tags
#verification #static-analysis #model-checking
