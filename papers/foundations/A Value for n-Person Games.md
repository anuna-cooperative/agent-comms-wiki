# A Value for n-Person Games

**Reference:** Shapley, L. S. (1953). *A Value for n-Person Games.* In H. W. Kuhn & A. W. Tucker (eds.), *Contributions to the Theory of Games, Volume II*, Annals of Mathematics Studies 28, pp. 307–317. Princeton University Press. [DOI](https://doi.org/10.1515/9781400881970-018) · [Open access PDF (RAND P-295)](https://www.rand.org/content/dam/rand/pubs/papers/2021/P295.pdf)

## Summary
Shapley asks a deceptively simple question: given a cooperative game in *characteristic-function form* — a set of players `N` and a function `v` assigning each coalition `S ⊆ N` the total payoff `v(S)` it can guarantee itself — how much is a seat in the game worth to each player *before it is played*? He seeks a **value**: a single number `φ_i(v)` for each player `i` representing a fair, a-priori assessment of what that player can expect. Rather than derive the value from a bargaining process, Shapley pins it down **axiomatically**, imposing three conditions any reasonable notion of fairness should satisfy and then proving that they leave exactly one possibility.

The axioms are: **(1) Efficiency / carrier** — the values distribute the whole worth of the game, `Σ_i φ_i(v) = v(N)`, and dummy players outside every carrier receive nothing; **(2) Symmetry** — the value is invariant under relabelling players, so two players who make identical marginal contributions to every coalition receive equal value (equals are treated equally); **(3) Additivity** — for two independent games, `φ(v + w) = φ(v) + φ(w)`. Shapley's theorem is that a *unique* function satisfies all three, and it has the closed form

`φ_i(v) = Σ_{S ⊆ N\{i}}  [ |S|! (n − |S| − 1)! / n! ] · ( v(S ∪ {i}) − v(S) )`.

The formula has a vivid interpretation: imagine the players joining the grand coalition one at a time in a random order, every one of the `n!` orders equally likely; each player's value is their **expected marginal contribution** — the extra worth they bring to the coalition of those who arrived before them, averaged over all arrival orders. This makes fairness operational: each player is credited exactly for what, on average, they add. The Shapley value became the canonical solution concept for fair division, cost allocation (the Shapley–Shubik power index, airport cost-sharing), and — decades later — machine-learning attribution (SHAP feature importances, Data Shapley for data valuation) and fair credit assignment among cooperating agents.

## Key Ideas
- **Characteristic-function game:** a game reduced to `(N, v)` with `v(∅) = 0`, where `v(S)` is the worth a coalition `S` can secure; individual strategies are abstracted away.
- **Value as an a-priori assessment:** `φ_i(v)` measures a player's expected worth *before* play, not the outcome of a specific bargain — a normative allocation rule, not a positive prediction.
- **Three fairness axioms uniquely determine the value:** efficiency (full distribution + dummies get zero), symmetry (equal treatment of interchangeable players), and additivity (linearity across combined games).
- **Marginal-contribution formula:** the value equals the average of a player's marginal contribution `v(S ∪ {i}) − v(S)` taken over all `n!` orderings of the players.
- **Null / dummy player:** a player who adds nothing to any coalition receives zero — a corollary of the axioms, encoding "no reward without contribution".
- **Symmetry ⇒ equal pay for equal work:** players who are substitutes in every coalition get identical value; this is the axiom that makes the value a *fairness* concept.
- **Foundational reach:** underpins cost-sharing, voting power (Shapley–Shubik), the Shapley–Folkman results' economic cousins, and modern SHAP / Data-Shapley attribution.

## Connections
- [[A Value for n-Person Games]]
- [[Shapley Value]]
- [[Cooperative Game Theory]]
- [[Characteristic Function Game]]
- [[Fair Division]]
- [[Marginal Contribution]]
- [[Credit Assignment]]
- [[Cost Sharing]]
- [[Mechanism Design]]
- [[Nash Equilibrium]]
- [[Counterspeculation Auctions and Competitive Sealed Tenders]]
- [[The Evolution of Cooperation]]
- [[The Strategy of Conflict]]
- [[Deals Among Rational Agents]]
- [[Convention - Lewis]]

## Conceptual Contribution
- **Claim:** There is exactly one way to fairly divide the total worth of a cooperative game among its players such that the division is efficient, treats interchangeable players identically, and is additive across independent games — and it credits each player with their expected marginal contribution over a random arrival order.
- **Mechanism:** Model the game by its characteristic function `v`; impose the efficiency/carrier, symmetry, and additivity axioms; prove a uniqueness theorem; derive the weighted-marginal-contribution formula and its random-ordering interpretation.
- **Concepts introduced/used:** [[Shapley Value]], [[Cooperative Game Theory]], [[Characteristic Function Game]], [[Marginal Contribution]], [[Fair Division]], [[Credit Assignment]], Efficiency axiom, Symmetry axiom, Additivity axiom, Dummy/null player.
- **Stance:** foundational technical paper (axiomatic solution concept).
- **Relates to:** The cooperative-game counterpart to the non-cooperative [[Nash Equilibrium]] and to Vickrey's [[Counterspeculation Auctions and Competitive Sealed Tenders|second-price auction]] — where Vickrey aligns a *winner's* payment with the externality they impose, Shapley distributes the *whole* surplus by average externality. In multi-agent systems the Shapley value is the canonical tool for **fair reward / credit allocation** among cooperating agents (cost-sharing, contribution-based payouts, and — in ML — SHAP feature attribution and Data Shapley), making it a natural formal backbone for the fairness questions raised by [[Deals Among Rational Agents]] and the cooperation dynamics studied in [[The Evolution of Cooperation]]. Its axiomatic style — pin the object down by the properties it *ought* to have — mirrors the foundational moves in [[Convention - Lewis]] and [[The Strategy of Conflict]].

## Tags
#game-theory #cooperative-game-theory #shapley-value #fair-division #credit-assignment #mechanism-design #foundations
