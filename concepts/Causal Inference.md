# Causal Inference

The branch of statistics and computer science that develops formal apparatus for reasoning about *causes* rather than mere associations: when can we conclude from observational or interventional data that `X` *causes* `Y`, that intervening on `X` would shift `Y`, or that `Y` would have been different had `X` been different? Two complementary traditions: [[Causality - Pearl|Pearl's]] graphical / structural-causal-model framework (DAGs + the [[do-Calculus]] + the [[ID Algorithm]]) and [[Potential Outcomes Framework - Rubin|Rubin's]] counterfactual / potential-outcomes framework (ignorability + positivity + propensity-score / IV / matching estimators). Formal mappings between the two are now standard (Pearl–Bareinboim 2009). For [[CBCL - Safe Self-Extending Agent Communication|CBCL]] / CIVeX, causal inference is the substrate: CIVeX certificates carry causal DAGs and identifiability proofs, checked rather than re-derived — the causal analogue of [[Proof-Carrying Code - Necula|PCC]].

## In this vault
- [[Causal Diagrams for Empirical Research - Pearl]] — Pearl 1995, the modern graphical framework
- [[Causality - Pearl]] — Pearl 2000/2009 textbook
- [[Identification of Joint Interventional Distributions - Shpitser Pearl]] — complete ID algorithm
- [[Potential Outcomes Framework - Rubin]] — Rubin 1974, the counterfactual framework
- [[do-Calculus]]
- [[Backdoor Criterion]]
- [[Front-door Criterion]]
- [[Structural Causal Model]]
- [[Counterfactual]]
- [[Identifiability]]
- [[Causal DAG]]
- [[Instrumental Variable]]
- [[Mediation Analysis]]
- [[Causal Influence of Communication]]
- [[Causal Threat Graph]]
- [[Causal Broadcast]]
- [[CBCL - Safe Self-Extending Agent Communication]]
