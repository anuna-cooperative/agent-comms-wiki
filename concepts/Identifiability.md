# Identifiability

In causal inference, a causal query — most commonly an interventional distribution `P(Y | do(X = x))` — is **identifiable** from observational data over a variable set `V` iff it can be written as an expression in the observational distribution `P(V)`. Identifiability is a *graphical* property: it depends only on the causal DAG, not on the parametric form of the distribution. Pearl's [[Backdoor Criterion]] and [[Front-door Criterion]] give sufficient graphical conditions; [[Identification of Joint Interventional Distributions - Shpitser Pearl|Shpitser–Pearl 2006]]'s ID algorithm is sound *and complete* for identification — it finds an expression if and only if one exists. The Rubin / potential-outcomes counterpart uses the [[Ignorability]] + [[Positivity]] conditions to characterise when standardisation by covariates yields the average treatment effect. For CIVeX-style certificates, identifiability is the property the certificate establishes — the prover ships the DAG, assumptions, and ID derivation; the host checks the derivation rather than re-running the algorithm.

## In this vault
- [[Causal Diagrams for Empirical Research - Pearl]]
- [[Causality - Pearl]]
- [[Identification of Joint Interventional Distributions - Shpitser Pearl]]
- [[Potential Outcomes Framework - Rubin]]
- [[do-Calculus]]
- [[Backdoor Criterion]]
- [[Front-door Criterion]]
- [[Causal DAG]]
- [[Structural Causal Model]]
- [[Causal Inference]]
- [[Counterfactual]]
- [[CBCL - Safe Self-Extending Agent Communication]]
