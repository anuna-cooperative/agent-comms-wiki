# Identification of Joint Interventional Distributions in Recursive Semi-Markovian Causal Models

**Reference:** Shpitser, I. & Pearl, J. (2006). *Identification of Joint Interventional Distributions in Recursive Semi-Markovian Causal Models.* In *Proceedings of the 21st National Conference on Artificial Intelligence (AAAI-06)*, Boston, July 2006, pp. 1219–1226. [URL (AAAI PDF)](https://cdn.aaai.org/AAAI/2006/AAAI06-191.pdf) · [Companion: *What Counterfactuals Can Be Tested*, UAI-07](https://ftp.cs.ucla.edu/pub/stat_ser/r321.pdf)

## Summary
Shpitser and Pearl give the **complete identification algorithm** for non-parametric causal effects in recursive semi-Markovian causal models — the result that finishes the project [[Causal Diagrams for Empirical Research - Pearl|Pearl 1995]] began. The headline: *given a DAG with possibly hidden variables, and a target intervention distribution `P(Y | do(X = x))`, there is a sound and complete algorithm — `ID` — that either returns a closed-form expression in the observational distribution `P(V)` or proves that no such expression exists (the effect is unidentifiable)*. Where Pearl 1995 gave sufficient conditions (backdoor, front-door) leaving a grey zone of "we haven't found an adjustment, but maybe one exists," Shpitser–Pearl close the grey zone: *the ID algorithm finds an expression if and only if one exists*. The do-calculus of [[Causality - Pearl|*Causality* (2000)]] turns out to be exactly the right deductive system — the ID algorithm is essentially a complete proof-search procedure for do-calculus derivations.

The mechanism is technical but compact. The algorithm operates on a *semi-Markovian* causal DAG (a DAG with hidden / latent variables represented by bidirected edges in the ADMG — *acyclic directed mixed graph*). It recursively decomposes the target distribution by *c-component factorisation* — a generalisation of chain-rule decomposition that respects the latent-variable structure — and at each step either reduces to an identified sub-problem or detects a *hedge*, a particular graphical pattern (the canonical obstruction to identifiability) that proves unidentifiability. The companion paper *What Counterfactuals Can Be Tested* (UAI-07) extends the framework to counterfactual queries (layer-3 in the Pearl ladder), characterising which counterfactuals are identifiable from interventional data.

For [[CBCL - Safe Self-Extending Agent Communication|CBCL]] / CIVeX, the Shpitser–Pearl ID algorithm is *the* operational substrate. A CIVeX certificate states a target causal query, the assumed DAG, and the ID derivation that identifies the query in terms of observational data. The verifier — running a small implementation of ID — checks the derivation against the algorithm. If the certificate type-checks, the causal claim is *provably* identifiable under the stated assumptions; if it fails, the certificate is rejected. Completeness means the verifier never needs to ask the prover for a different formulation: if any identification exists, ID finds it. The classical pair with [[Proof-Carrying Code - Necula|PCC]] is exact: PCC + ID together give *the* picture of "ship the causal proof, check the proof" for causal-inference artefacts. Shpitser–Pearl is therefore one of the most direct technical citations the CBCL / CIVeX discussion section needs.

## Key Ideas
- *Recursive semi-Markovian causal model*: an acyclic directed graph over observed and hidden variables, equivalently an *acyclic directed mixed graph (ADMG)* over observed variables with bidirected edges representing shared hidden parents. The standard formal substrate for causal identifiability when some confounders are unmeasured.
- *Joint interventional distribution*: `P(Y | do(X = x))` for `Y` a (possibly multivariate) target and `X` a (possibly multivariate) intervention set. The paper handles the joint multivariate case rather than just single-cause single-effect.
- *ID algorithm*: a recursive procedure that either returns a closed-form expression for `P(Y | do(X = x))` in terms of `P(V)` (the observational distribution over observed variables) or detects unidentifiability via a *hedge* obstruction.
- *Soundness and completeness*: the ID algorithm is *sound* (every expression returned is correct) and *complete* (if any expression for `P(Y | do(X = x))` exists, ID returns one). Together with the soundness/completeness of do-calculus, this fully resolves non-parametric identifiability.
- *c-component factorisation*: the structural decomposition that drives ID. Each *c-component* is a maximal set of observed variables connected by paths of bidirected edges; the joint distribution factorises along c-components in a way that respects the latent-variable structure.
- *Hedge as canonical obstruction*: a *hedge* is a particular graphical pattern (a pair of c-forests in a tree-like configuration) whose presence proves unidentifiability. Every unidentifiable case witnesses a hedge.
- *Completeness of do-calculus*: a corollary — Pearl's three-rule do-calculus is complete for non-parametric identification. The ID algorithm is, in effect, an automated do-calculus prover.
- *Companion: counterfactual identification*: *What Counterfactuals Can Be Tested* (UAI-07) extends the framework to layer-3 (counterfactual) queries, characterising which counterfactuals can be identified from interventional distributions.

## Connections
- [[Causality - Pearl]]
- [[Causal Diagrams for Empirical Research - Pearl]]
- [[Potential Outcomes Framework - Rubin]]
- [[do-Calculus]]
- [[Identifiability]]
- [[ID Algorithm]]
- [[Hedge (Causal Inference)]]
- [[c-Component]]
- [[Semi-Markovian Causal Model]]
- [[Acyclic Directed Mixed Graph]]
- [[Counterfactual]]
- [[Structural Causal Model]]
- [[Backdoor Criterion]]
- [[Front-door Criterion]]
- [[Proof-Carrying Code - Necula]]
- [[An Axiomatic Basis for Computer Programming - Hoare]]
- [[Causal Influence of Communication]]
- [[Causal Threat Graph]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** For non-parametric causal identification in recursive semi-Markovian models, there is a sound *and complete* algorithm: given a target intervention distribution and a DAG with hidden variables, the algorithm either expresses the target in observational quantities or proves unidentifiability via the *hedge* graphical pattern. As a corollary, Pearl's do-calculus is complete for identification.
- **Mechanism:** The ID algorithm operates on a semi-Markovian DAG (or equivalently an ADMG over observed variables). At each recursive step, it performs *c-component factorisation* to decompose the target distribution along the latent-variable-induced equivalence classes; it then either reduces the problem to identified subproblems or recognises a *hedge* obstruction and outputs *unidentifiable*. Soundness follows from each step being a do-calculus transformation; completeness follows from hedges being the only obstruction.
- **Concepts introduced/used:** [[ID Algorithm]], [[c-Component]], [[Hedge (Causal Inference)]], [[Semi-Markovian Causal Model]], [[Acyclic Directed Mixed Graph]], [[Identifiability]], [[Completeness of do-Calculus]].
- **Stance:** foundational technical paper.
- **Relates to:** The algorithmic completion of [[Causal Diagrams for Empirical Research - Pearl|Pearl 1995]] / [[Causality - Pearl|*Causality* 2000]]: where 1995/2000 gave sufficient graphical conditions and the deductive do-calculus, Shpitser–Pearl 2006 gives the complete decision procedure. The companion *What Counterfactuals Can Be Tested* (UAI-07) extends to layer-3 queries. The complementary framework is [[Potential Outcomes Framework - Rubin|Rubin's potential outcomes]]; the algorithmic completeness on the graphical side has no equally clean counterpart on the potential-outcomes side, which is part of why graphical methods have won the practical computational ground. For [[CBCL - Safe Self-Extending Agent Communication|CBCL]] / CIVeX, this is the *operational substrate*: a CIVeX certificate carries a DAG, a target query, and an ID derivation; the verifier runs a small ID implementation to check the derivation. Pairs with [[Proof-Carrying Code - Necula|PCC]] in the obvious way: PCC + ID = "ship the causal proof, check the proof" for causal-inference artefacts. The CBCL/CIVeX discussion section's claim that causal certificates are *decidably checkable* leans on Shpitser–Pearl completeness; without it, the architecture would have to apologise for occasionally being too weak.

## Tags
#shpitser-pearl #causal-inference #id-algorithm #identifiability #do-calculus #aaai #civex #foundations #2006 #completeness
