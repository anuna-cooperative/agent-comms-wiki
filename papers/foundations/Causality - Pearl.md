# Causality: Models, Reasoning, and Inference

**Reference:** Pearl, J. (2000, 2nd ed. 2009). *Causality: Models, Reasoning, and Inference.* Cambridge University Press. 384 pp (1st ed.) / 484 pp (2nd ed.). [URL (ILLC Amsterdam, 2nd ed. PDF)](https://archive.illc.uva.nl/cil/uploaded_files/inlineitem/Pearl_2009_Causality.pdf) · [Cambridge UP page](https://www.cambridge.org/9780521895606) · [Internet Archive](https://archive.org/details/causalitymodelsr0000pear)

## Summary
*Causality* is the book-length statement of Pearl's graphical-causal-inference programme — the work that fixes a usable vocabulary for *causation* in the empirical sciences, replacing decades of philosophical regress with a constructive theory. The book extends the apparatus of [[Causal Diagrams for Empirical Research - Pearl|*Causal Diagrams for Empirical Research*]] (1995) along three axes. (1) From *interventional* to *counterfactual* causal queries: the **structural causal model** (SCM) — a system of structural equations with exogenous error terms — supports queries about *what would have happened if* particular variables had taken different values, not only about intervention distributions. (2) From *backdoor / front-door criteria* to *do-calculus*: a complete deductive system (three rules: insertion/deletion of observations, action/observation exchange, and insertion/deletion of actions) for transforming `do`-expressions. Together with [[Identification of Joint Interventional Distributions - Shpitser Pearl|Shpitser & Pearl 2006]]'s completeness result, do-calculus is complete for non-parametric identifiability. (3) From *identifiability* to *applied causal inference*: chapters on confounding, mediation, instrumental variables, the actual-cause problem, and the foundations of legal-causal reasoning.

The technical core in three layers. **Layer 1 (association)**: ordinary probabilistic conditional `P(Y | X)`. **Layer 2 (intervention)**: post-do distribution `P(Y | do(X = x))`, derived from the SCM by surgical replacement of `X`'s equation. **Layer 3 (counterfactuals)**: queries like `P(Y_{X=x} | X = x', Y = y')` — "given that we observed `X = x'` and `Y = y'`, what would `Y` have been if we had set `X = x`?" — derived by the *abduction–action–prediction* procedure: update exogenous-error distributions on the evidence, intervene on `X`, predict `Y`. Pearl calls this stratification the *Ladder of Causation*; the book argues that the climb from layer 1 to layer 3 is a matter of *added assumptions* (structural equations, then exogenous-error distributions), not of finer-grained statistical methodology.

For [[CBCL - Safe Self-Extending Agent Communication|CBCL]] and CIVeX, the book is the textbook reference. CIVeX certificates carry a DAG, a stated set of structural assumptions, and a do-calculus derivation establishing identifiability of the target causal query. The host's verifier checks the derivation against the do-calculus rules. The completeness of do-calculus (Shpitser & Pearl 2006) means that the verifier never has to apologise for being too weak: if the effect is identifiable at all, do-calculus derives it. The book also supplies the *vocabulary for stating what CIVeX certificates are claiming*: distinctions between association, intervention, and counterfactual; between identifiability and estimability; between confounding, mediation, and selection — all of which are needed to write precise threat models for causal claims in multi-agent settings.

## Key Ideas
- *Structural Causal Model (SCM)*: a system of structural equations `Vᵢ := fᵢ(PAᵢ, Uᵢ)` over endogenous variables `V` with exogenous errors `U`, plus a distribution over `U`. The SCM is the formal carrier of all three causal layers.
- *Ladder of Causation*: three layers of causal queries, each requiring strictly more assumptions. Layer 1 (*seeing*) — `P(Y | X)`. Layer 2 (*doing*) — `P(Y | do(X = x))`. Layer 3 (*imagining*) — counterfactuals `P(Y_{X=x} | E)` for arbitrary evidence `E`.
- *do-calculus*: three syntactic transformation rules over `do`-expressions: (R1) insertion/deletion of observations under d-separation; (R2) action/observation exchange under modified d-separation; (R3) insertion/deletion of actions under absence-of-causal-paths. Combined with probability axioms, the calculus is *complete* for non-parametric identifiability (Shpitser–Pearl 2006).
- *Identifiability under unobserved confounders*: many effects are identifiable even when key confounders are unmeasured. The do-calculus discovers when, and the [[Identification of Joint Interventional Distributions - Shpitser Pearl|Shpitser–Pearl ID algorithm]] gives a complete procedure.
- *Counterfactual queries by abduction–action–prediction*: (i) Update `P(U)` on observed evidence (abduction). (ii) Intervene on the SCM (action). (iii) Compute the distribution of the target variable (prediction). The procedure yields counterfactuals from the SCM.
- *Mediation analysis*: natural direct, natural indirect, and total effects decompose causal influence along specific paths. Identification conditions are characterised by the *mediation formula* and the more general path-specific effects.
- *Instrumental variables*: a classical econometric tool given a clean graphical characterisation — an *instrument* is a variable affecting `X` but not `Y` directly or via unmeasured confounders. The IV estimand is recoverable when the graphical conditions hold.
- *Actual cause / responsibility*: chapter 10 develops a formal theory of *actual causation* — *what actually caused the outcome in this token case?* — built on counterfactuals and contingency. Foundational for legal and AI-ethics applications.
- *Transportability*: under what conditions can a causal effect estimated in one population be transferred to another? Bareinboim–Pearl give graphical criteria.

## Connections
- [[Causal Diagrams for Empirical Research - Pearl]]
- [[Identification of Joint Interventional Distributions - Shpitser Pearl]]
- [[Potential Outcomes Framework - Rubin]]
- [[Structural Causal Model]]
- [[do-Calculus]]
- [[Ladder of Causation]]
- [[Counterfactual]]
- [[Backdoor Criterion]]
- [[Front-door Criterion]]
- [[Instrumental Variable]]
- [[Mediation Analysis]]
- [[Actual Cause]]
- [[Transportability]]
- [[Identifiability]]
- [[d-Separation]]
- [[Causal DAG]]
- [[Causal Inference]]
- [[Proof-Carrying Code - Necula]]
- [[An Axiomatic Basis for Computer Programming - Hoare]]
- [[Causal Influence of Communication]]
- [[Causal Threat Graph]]
- [[Causal Broadcast]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Causal reasoning admits a precise, computable, non-parametric foundation built on structural causal models (SCMs), the do-operator for intervention, and the do-calculus for transforming causal queries. The three-layer *Ladder of Causation* (association / intervention / counterfactual) stratifies the assumptions required for each kind of causal claim.
- **Mechanism:** Define SCMs as systems of structural equations with exogenous errors. Define interventions surgically (replace `X`'s equation by `X := x`). Define counterfactuals via abduction–action–prediction on the SCM. Give the do-calculus (three transformation rules) and show it is sound; later work (Shpitser–Pearl 2006) shows it is also complete for identification. Extend to mediation, instruments, actual causation, transportability across populations.
- **Concepts introduced/used:** [[Structural Causal Model]], [[Ladder of Causation]], [[do-Calculus]], [[Counterfactual]], [[Mediation Analysis]], [[Instrumental Variable]], [[Actual Cause]], [[Transportability]], [[Identifiability]].
- **Stance:** foundational technical monograph / textbook.
- **Relates to:** The book that the paper [[Causal Diagrams for Empirical Research - Pearl|*Causal Diagrams*]] (1995) prefigures and that [[Identification of Joint Interventional Distributions - Shpitser Pearl|Shpitser & Pearl 2006]] completes algorithmically. The complementary framework is [[Potential Outcomes Framework - Rubin|Rubin's potential outcomes]] (1974): the same causal effects in counterfactual notation, with explicit formal mappings between the two languages (Pearl–Bareinboim 2009). For [[CBCL - Safe Self-Extending Agent Communication|CBCL]] / CIVeX, the book is the textbook reference: CIVeX certificates carry DAGs, structural assumptions, and do-calculus derivations of identifiability; the host's verifier checks the derivation against the calculus. The PCC pairing is exact ([[Proof-Carrying Code - Necula|Necula]]): PCC ships behavioural proofs over machine states; CIVeX ships causal-identification proofs over the DAG; both rely on small, generic verifiers that check rather than re-derive.

## Tags
#pearl #causality #do-calculus #structural-causal-model #counterfactuals #civex #foundations #cambridge-up #2000 #ladder-of-causation
