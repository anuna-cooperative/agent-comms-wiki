# Causal Diagrams for Empirical Research

**Reference:** Pearl, J. (1995). *Causal Diagrams for Empirical Research.* Biometrika 82(4): 669–688. December 1995. With discussion and rejoinder. [URL (UCLA CogSys Lab)](https://bayes.cs.ucla.edu/R218-B.pdf) · [DOI](https://doi.org/10.1093/biomet/82.4.669)

## Summary
Pearl's *Causal Diagrams* is the paper in which the modern graphical apparatus of causal inference takes recognisable shape: directed acyclic graphs (DAGs) over observed and latent variables as the carrier of *non-parametric* causal assumptions, the **do-operator** as the formal representation of intervention, and the **backdoor criterion** as the first widely-usable graphical test for whether a causal effect is *identifiable* from observational data given a set of measured covariates. Where the early structural-equations and path-analysis tradition (Wright 1921, Haavelmo 1943) had given causal interpretations to specific parametric models, and where the do-then-randomise tradition (Rubin 1974) had given a counterfactual semantics to causal effects without graphs, Pearl unifies both: the DAG carries the structural assumptions, the do-operator gives the counterfactual semantics, and a small algebra of graphical operations decides identifiability.

The mechanism is precise. A causal model is a DAG `G` over variables `V` together with structural equations or, more generally, a non-parametric structural model. The *do-operator* `do(X = x)` represents the intervention that sets `X` to `x` regardless of `X`'s natural causes — graphically, by *severing the incoming edges* to `X` in `G`. A causal effect `P(Y | do(X = x))` is *identifiable* from observational data over `V` iff it can be written as an expression in the observational distribution `P(V)`. The *backdoor criterion* gives a sufficient condition: a set `Z` of measured covariates is admissible for adjustment iff `Z` blocks every backdoor path from `X` to `Y` (every path with an arrow into `X`) and contains no descendants of `X`. When `Z` is admissible, `P(Y | do(X = x)) = ∑_z P(Y | X = x, Z = z) P(Z = z)` — the *backdoor adjustment formula*. The paper also introduces the *front-door criterion* for cases where backdoor adjustment fails but a mediator can be exploited.

For the [[CBCL - Safe Self-Extending Agent Communication|CBCL]] / CIVeX programme, Pearl 1995 is the foundation. CIVeX certificates carry a DAG of causal assumptions and a proof that the queried effect is identifiable from the available data under those assumptions; this is exactly what Pearl establishes is *expressible* and *checkable*. The paper is also a methodological complement to the [[Proof-Carrying Code - Necula|PCC]] architecture in CBCL: where PCC ships behavioural proofs, CIVeX ships causal-identification proofs, and both are checked against a stated specification rather than re-derived. The completion of the graphical identifiability story — characterising *exactly* which causal effects are identifiable in the presence of unobserved confounders — is [[Identification of Joint Interventional Distributions - Shpitser Pearl|Shpitser & Pearl 2006]]'s complete-ID algorithm; Pearl 1995 is the place the story starts to look like an algorithm rather than a case-by-case analysis.

## Key Ideas
- *Causal DAG as non-parametric structural model*: a DAG `G` over `V` together with structural equations (or a non-parametric Markov-compatible distribution). The DAG carries the *causal assumptions*; the distribution is what is observed.
- *do-operator*: `do(X = x)` represents intervention — setting `X` to `x` by external manipulation, *severing* the natural mechanisms that determine `X`. Graphically: delete incoming edges to `X` in `G`; semantically: replace `X`'s structural equation with `X := x`. The post-intervention distribution `P(V | do(X = x))` is the central object of causal inference.
- *Identifiability*: a causal query `P(Y | do(X = x))` is *identifiable* from observational data over `V` iff it can be written as an expression in `P(V)`. Identifiability is a graphical property — it depends only on the DAG, not on the specific distribution.
- *Backdoor criterion*: `Z ⊆ V` is admissible for adjustment iff (i) no node in `Z` is a descendant of `X` in `G`, and (ii) `Z` blocks every *backdoor* path from `X` to `Y` (every path with an arrow into `X`). When `Z` is admissible, `P(Y | do(X = x)) = ∑_z P(Y | X = x, Z = z) P(Z = z)`.
- *Front-door criterion*: when no admissible `Z` for backdoor adjustment exists, identification may still be possible via a mediator `M` on the directed path from `X` to `Y`. The front-door formula uses `M` to identify the effect even in the presence of unobserved confounders.
- *Markov compatibility / d-separation*: `G` constrains `P(V)` via conditional-independence statements encoded by *d-separation* — a purely graphical criterion. The empirical content of a causal DAG is exactly the d-separations it implies.
- *Bridge to interventions*: causal effects can be *defined* purely structurally (no counterfactual ontology needed) by reference to the post-intervention distribution. Counterfactuals re-enter when finer-grained queries (mediation, attribution) are asked, handled by structural causal models in Pearl's later work.

## Connections
- [[Causality - Pearl]]
- [[Identification of Joint Interventional Distributions - Shpitser Pearl]]
- [[Potential Outcomes Framework - Rubin]]
- [[do-Calculus]]
- [[Backdoor Criterion]]
- [[Front-door Criterion]]
- [[Structural Causal Model]]
- [[Causal DAG]]
- [[d-Separation]]
- [[Identifiability]]
- [[Intervention]]
- [[Counterfactual]]
- [[Causal Inference]]
- [[Proof-Carrying Code - Necula]]
- [[Hoare Logic]]
- [[An Axiomatic Basis for Computer Programming - Hoare]]
- [[Causal Influence of Communication]]
- [[Causal Threat Graph]]
- [[Causal Broadcast]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Causal effects can be represented graphically (as DAGs over observed and latent variables) and *identified* from observational data by a calculus of graphical operations. The do-operator gives the formal semantics of intervention; the backdoor and front-door criteria give algorithmic identifiability conditions.
- **Mechanism:** Encode causal assumptions as a DAG `G` over `V`. Define interventions via the do-operator, semantically the surgical replacement of `X`'s structural equation by `X := x` and graphically the severing of incoming edges. State identifiability as the existence of an expression in `P(V)` for `P(Y | do(X = x))`. Give the *backdoor criterion* as a sufficient graphical condition (block all backdoor paths, no descendants of `X`) together with the backdoor adjustment formula. Give the *front-door criterion* for the harder case of unmeasured confounding. The result is a non-parametric, graph-driven, algorithmic theory of causal identification.
- **Concepts introduced/used:** [[do-Calculus]], [[Causal DAG]], [[Structural Causal Model]], [[Intervention]], [[Backdoor Criterion]], [[Front-door Criterion]], [[d-Separation]], [[Identifiability]], [[Markov Compatibility]].
- **Stance:** foundational technical paper.
- **Relates to:** Pearl's compact statement of the apparatus developed at book length in [[Causality - Pearl|*Causality*]] (2000/2009); the algorithmic completion is [[Identification of Joint Interventional Distributions - Shpitser Pearl|Shpitser & Pearl 2006]]. The complementary tradition is [[Potential Outcomes Framework - Rubin|Rubin's potential-outcomes framework]] (1974) — the same causal effects in counterfactual notation; later work (Pearl–Bareinboim, Imbens–Rubin) establishes formal mappings between the two. For [[CBCL - Safe Self-Extending Agent Communication|CBCL]] and CIVeX, this is the substrate: a CIVeX certificate carries a DAG and a proof of identifiability under stated assumptions, checked by the host rather than re-derived. The pairing with [[Proof-Carrying Code - Necula|PCC]] is exact: PCC ships *behavioural* proofs over machine states; CIVeX ships *causal-identification* proofs over the DAG. The d-separation / Markov-compatibility connection grounds the bridge to probabilistic graphical models more broadly.

## Tags
#pearl #causal-inference #do-calculus #backdoor #dag #identifiability #civex #foundations #biometrika #1995
