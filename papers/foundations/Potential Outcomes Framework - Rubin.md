# Estimating Causal Effects of Treatments in Randomized and Nonrandomized Studies

**Reference:** Rubin, D. B. (1974). *Estimating Causal Effects of Treatments in Randomized and Nonrandomized Studies.* Journal of Educational Psychology 66(5): 688–701. October 1974. [APA PsycNet record (DOI 10.1037/h0037350)](https://psycnet.apa.org/record/1975-06502-001) · [ERIC index entry](https://eric.ed.gov/?id=EJ118470) · See also Rubin's later book with Imbens, *Causal Inference for Statistics, Social, and Biomedical Sciences* (Cambridge UP 2015) for the canonical textbook statement.

## Summary
Rubin's 1974 paper is the founding statement of the **potential-outcomes framework** (a.k.a. the *Rubin causal model*) — the alternative to [[Causal Diagrams for Empirical Research - Pearl|Pearl's graphical apparatus]] that has dominated statistics, econometrics, and biomedical inference. The central move: rather than thinking of causation in terms of mechanisms or structural equations, define a causal effect *counterfactually*. For each unit `i` and each treatment level `t`, posit a *potential outcome* `Yᵢ(t)` — the outcome unit `i` *would have exhibited* under treatment `t`. The unit-level causal effect of treatment `t` versus control `c` is `Yᵢ(t) − Yᵢ(c)`. The *fundamental problem of causal inference* is that only one of `Yᵢ(t)` and `Yᵢ(c)` is ever observed for any single unit — the other is counterfactual. Causal inference is then statistical inference about the unobserved counterfactual.

The framework's payoff comes from clarifying the *role of randomization*. Under random assignment to treatment, observed and counterfactual outcomes are exchangeable: the distribution of `Yᵢ(t)` in the treated group equals the distribution that would have obtained in the control group had they been treated. The *average treatment effect* (ATE) `E[Y(t) − Y(c)]` is then estimable as the simple difference in group means. The framework also clarifies *what observational data lets us do*: under stated **ignorability** (a.k.a. *conditional exchangeability*, *no unmeasured confounders*) and **positivity** assumptions, the ATE is identifiable by *covariate adjustment* — the same calculation Pearl's backdoor adjustment formula yields, derived from the counterfactual side. Subsequent work (Rosenbaum–Rubin propensity scores 1983, matching, Imbens–Angrist instrumental-variables 1994) builds out the estimation toolbox.

The framework is now the *dominant language of causal inference in applied statistics*. For [[CBCL - Safe Self-Extending Agent Communication|CBCL]] / CIVeX, knowing both languages matters: a CIVeX certificate may be written in either graphical or potential-outcomes notation, and the verifier may need to translate between them. The formal equivalence is established by Pearl–Bareinboim 2009 and Pearl 2010: any non-parametric causal effect expressible in one framework is expressible in the other under translation; the languages differ in *ergonomics* (graphs make assumptions visually inspectable; potential outcomes make assumptions algebraically inspectable) rather than *expressive power*. The paper is the place to cite to acknowledge the other half of the causal toolkit.

## Key Ideas
- *Potential outcomes*: for each unit `i` and treatment level `t`, posit `Yᵢ(t)` — the outcome unit `i` would exhibit under `t`. Both `Yᵢ(treated)` and `Yᵢ(control)` are well-defined, but only one is observed for any given unit.
- *Unit-level causal effect*: `Yᵢ(t) − Yᵢ(c)`. Defined for each unit, even though typically unobservable.
- *Fundamental problem of causal inference*: only one potential outcome per unit is observable. Causal inference is statistical inference about the unobserved counterfactual.
- *SUTVA (Stable Unit-Treatment Value Assumption)*: implicit in defining `Yᵢ(t)` as a function of unit and treatment only — (i) no interference between units, and (ii) no multiple versions of treatment. SUTVA violations (peer effects, network spillovers, treatment heterogeneity) require explicit extension.
- *Ignorability / Conditional Exchangeability*: `(Y(t), Y(c)) ⫫ T | X` — given covariates `X`, treatment assignment is independent of potential outcomes. The non-graphical statement of "no unmeasured confounders".
- *Positivity / Common Support*: `0 < P(T = t | X = x) < 1` for all `x` in the support. Required for ATE identification — must have some chance of either treatment at every covariate level.
- *Randomization*: random assignment of `T` independent of `(Y(t), Y(c))` makes ignorability hold without conditioning. The methodological justification for randomized experiments.
- *Average Treatment Effect (ATE)*: `E[Y(t) − Y(c)]`. The standard target estimand. Identifiable under ignorability + positivity by *standardization* (covariate adjustment), which yields the same formula as Pearl's backdoor adjustment.
- *Successors*: propensity score (Rosenbaum–Rubin 1983), matching, instrumental variables (Imbens–Angrist 1994), the Local Average Treatment Effect (LATE), doubly-robust estimation, the entire modern econometric/biostatistical causal-inference toolbox.

## Connections
- [[Potential Outcomes Framework - Rubin]]
- [[Rubin Causal Model]]
- [[Causal Diagrams for Empirical Research - Pearl]]
- [[Causality - Pearl]]
- [[Identification of Joint Interventional Distributions - Shpitser Pearl]]
- [[Counterfactual]]
- [[Average Treatment Effect]]
- [[Ignorability]]
- [[Positivity]]
- [[SUTVA]]
- [[Propensity Score]]
- [[Instrumental Variable]]
- [[Structural Causal Model]]
- [[Identifiability]]
- [[do-Calculus]]
- [[Causal Inference]]
- [[Proof-Carrying Code - Necula]]
- [[Causal Influence of Communication]]
- [[Causal Threat Graph]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Causal effects can be defined and estimated by positing *potential outcomes* `Yᵢ(t)` for each unit-treatment pair and treating causal inference as statistical inference about unobserved counterfactuals. Random assignment guarantees identifiability of average effects without further assumptions; observational data require *ignorability* (no unmeasured confounders) and *positivity* (common support).
- **Mechanism:** For each unit `i` and treatment level `t`, define `Yᵢ(t)` as the outcome `i` would exhibit under `t`. The fundamental problem: only one `Yᵢ(t)` is observed per unit. Define the unit-level effect `Yᵢ(t) − Yᵢ(c)` and population estimands (ATE, ATT). Identify the ATE under random assignment without further assumption; under observational data with measured covariates `X`, identify under ignorability `(Y(t), Y(c)) ⫫ T | X` and positivity. Estimate by direct standardization, propensity-score adjustment, matching, or instrumental variables when assumptions fail.
- **Concepts introduced/used:** [[Potential Outcomes]], [[Rubin Causal Model]], [[Counterfactual]], [[SUTVA]], [[Ignorability]], [[Positivity]], [[Average Treatment Effect]], [[Propensity Score]] (later), [[Instrumental Variable]] (later), [[Fundamental Problem of Causal Inference]].
- **Stance:** foundational technical paper.
- **Relates to:** The complementary framework to [[Causal Diagrams for Empirical Research - Pearl|Pearl 1995]] / [[Causality - Pearl|*Causality* 2000]] — the same causal effects in different notation. Pearl–Bareinboim 2009 and Pearl 2010 establish formal mappings between the two; ignorability + positivity in the Rubin language correspond to the existence of an admissible covariate set in the Pearl backdoor sense. The languages differ in *ergonomics*: graphs make assumptions visually inspectable; potential outcomes make assumptions algebraically inspectable and integrate naturally with regression-based estimation. The 1974 paper is the seed; the canonical textbook statement is Imbens–Rubin 2015. For [[CBCL - Safe Self-Extending Agent Communication|CBCL]] / CIVeX, the framework provides the *other half* of the causal toolkit: a CIVeX certificate may state its identification claim in either potential-outcomes or graphical language, and the verifier may need to translate. Knowing both is part of the technical literacy required for serious causal-claim verification. [[Identification of Joint Interventional Distributions - Shpitser Pearl|Shpitser–Pearl 2006]]'s completeness on the graphical side has no equally clean counterpart on the potential-outcomes side — the practical computational ground favours graphs.

## Tags
#rubin #potential-outcomes #counterfactual #causal-inference #ignorability #ate #civex #foundations #1974 #classical
