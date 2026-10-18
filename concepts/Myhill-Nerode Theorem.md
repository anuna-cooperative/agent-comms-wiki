# Myhill-Nerode Theorem

A language L is regular if and only if it has finitely many equivalence classes under the relation x ≡ y exactly when, for every suffix z, xz belongs to L if and only if yz belongs to L. The number of classes equals the number of states in the minimal deterministic finite automaton recognising L.

Two prefixes are distinguishable when some common suffix makes exactly one resulting string a member of L. A correct DFA must send distinguishable prefixes to different states. By the [[Pigeonhole Principle]], more pairwise distinguishable prefixes than states force an error; infinitely many such prefixes rule out every finite-state recognizer.

For example, in L = {aⁿbⁿ | n ≥ 0}, the prefixes aⁱ and aʲ, for i ≠ j, are distinguished by the suffix bⁱ. There are infinitely many distinguishable prefixes, so L is not regular. A pushdown automaton can recognise it by using its stack to match the counts.

## Visual intuition: a state is a memory

Pause a recognizer after it reads a prefix. Its current state determines how it will handle every possible continuation. **Two prefixes may share a state only if no continuation can distinguish them.**

For the equal-count language above, try appending the same suffix, `bb`, to two different prefixes:

![Two prefixes receive different answers for the same suffix bb.](../../_static/diagrams/myhill-distinguish.svg)

The different answers prove that `a` and `aa` need different states. If the recognizer merged them, it would lose information needed for a correct decision:

![Merging the prefixes into one state forces the same decision and an error.](../../_static/diagrams/myhill-merge.svg)

The same argument works for arbitrarily many prefixes:

| Prefix | Append this suffix | Result | What it distinguishes |
|---|---|---|---|
| `a` | `b` | `ab`: accept | Every other prefix consisting only of a's rejects with this suffix |
| `aa` | `bb` | `aabb`: accept | Every other prefix consisting only of a's rejects with this suffix |
| `aaa` | `bbb` | `aaabbb`: accept | Every other prefix consisting only of a's rejects with this suffix |
| aⁿ | bⁿ | aⁿbⁿ: accept | Every aᵐ with m ≠ n rejects with this suffix |

There are infinitely many pairwise distinguishable prefixes. Any finite collection of states must eventually merge two of them, by the [[Pigeonhole Principle]]. Therefore, no DFA can recognise this language exactly.

## When forgetting is safe

Now consider a different language: strings over `{a}` with an even number of a's, including the empty string. The prefixes `a` and `aaa` can share a state: both have an odd count, and every common continuation preserves their agreement on acceptance. Only parity matters, so the exact count can be forgotten.

![An even-count recognizer switches between two states for each a.](../../_static/diagrams/myhill-parity.svg)

All even-length prefixes belong to one equivalence class; all odd-length prefixes belong to another. The suffix `a` distinguishes those two classes: it makes an even prefix odd and an odd prefix even. **Exactly two classes means exactly two states in the minimal DFA.**

The theorem counts the memories that future decisions actually require. Different prefixes need not have different states; only distinguishable prefixes do. This is why the prefix-to-state function must be [[Injective Function|injective]] on a set of pairwise distinguishable prefixes, rather than on all prefixes.

## Relevance to LangSec

The theorem supplies an exact state lower bound for finite-state [[Recognizer|recognizers]]. It explains why a finite-state validator cannot exactly recognise a nonregular input language. It does not prove that two parsers with the same computational power accept the same language or interpret inputs identically; see [[Parser Equivalence]]. Unlike the [[Pumping Lemma]] for regular languages, the theorem characterises regularity in both directions.

## Sources

- [Columbia: The Myhill–Nerode theorem](https://www.cs.columbia.edu/~tal/3261/sp18/MyhillNerode.pdf) — theorem and minimal-state characterisation.
- [Carnegie Mellon: pigeonhole proof technique](https://www.andrew.cmu.edu/user/dennisc2/fps).

## In this vault

- [[Multiparty Session Types Meet Communicating Automata]] — finite-state participants can still have unbounded global memory in their message queues; local finite-state recognition alone does not establish protocol safety.
- [[Chomsky Hierarchy]]
- [[LangSec]]
