# Interpreting systems as solving POMDPs: a step towards a formal understanding of agency

**Reference:** Biehl, M. & Virgo, N. (2022). *Interpreting systems as solving POMDPs: a step towards a formal understanding of agency.* Proceedings of the 3rd International Workshop on Active Inference (IWAI 2022); published in *Active Inference. IWAI 2022*, Communications in Computer and Information Science, vol. 1721, Springer, Cham. arXiv:2209.01619 (Cross Labs / Cross Compass, Tokyo; Earth-Life Science Institute, Tokyo Institute of Technology). [URL](https://arxiv.org/abs/2209.01619).

## Summary
When is a physical system entitled to be described as having beliefs and goals? Biehl and Virgo answer with a *consistency* criterion rather than a predictive one. Their starting point is [[True Believers - The Intentional Strategy and Why It Works|Dennett's]] [[Intentional Stance]], which licenses agent-talk when it out-predicts the [[Physical Stance]]. The authors explicitly depart from this comparison-of-stances approach: assuming we already know what the system does at the physical level, they ask whether we can *consistently ascribe* meaning to its physical states such that those states appear to implement belief updating and decision making. This builds directly on Virgo, Biehl & McGregor's earlier notion of interpreting a dynamical system as a Bayesian *reasoner* — something that takes inputs and makes inferences about a hidden variable, but that has neither goals nor actions. The present paper's contribution is to extend consistent interpretation to cover goals and actions, and thereby to reach agents.

Three deliberate conceptual commitments make this precise. The system is taken to be a **stochastic Moore machine** `(M, I, O, μ, ω)` — internal states, inputs, outputs, a stochastic machine kernel, and a *deterministic* expose function; the authors note this is far from the most general system but is general enough to cover the digital computers running most present-day artificial agents. Beliefs are probability distributions updated in accordance with Bayes' law. Goals and rationality come from **POMDPs**, which supply both a formal notion of goal (expected cumulative discounted reward maximisation) and of rational behaviour (the optimal policy). The technical machinery is a *consistent Bayesian influenced filtering interpretation* (Def. 3): a hidden state space `H`, an action space `A`, an **interpretation map** `ψ : M → PH` sending machine states to beliefs over hidden states, an action function `α : M → A`, and a model kernel `κ : H × A → P(H × I)`. A stochastic Moore machine is then interpretable **as a solution to a POMDP** (Def. 5) if its machine part admits such an interpretation and its expose function emits the optimal action for the belief its state parameterises: `ω(m) = π*(ψ(m))`. An **agent**, on this proposal, is the *pair* of a system and such an interpretation.

Two features do the real work. First, machine states need only *parameterise* beliefs rather than be belief states — `ψ` need not be injective, so interpretations come with a built-in notion of coarse-graining, and the definition covers more than the canonical belief-state machines. Proposition 1 shows this is not a loosening in disguise: for any input that is *subjectively possible* under the interpretation, the parameterised distributions `ψ(m)` update exactly as the Bayesian belief-state update requires, so `V̄*(m) := V*(ψ(m))` is an optimal value function on the machine's own state space with optimal policy `ω(m) = π*(ψ(m))`. Such machines are optimal in the same sense as machines whose states *are* correctly-updated beliefs. Second, **consistency is not correctness**: whether a consistent interpretation exists depends only on the machine being interpreted, not on any property of its environment. An agent may hold a wrong model — its conclusions will then be wrong while its reasoning stays consistent — and its actions need only be optimal *according to its own model*, possibly suboptimal in the true environment. The authors flag this as a clear point of difference from the original [[Free Energy Principle]] literature, where the model is derived from the actual environment's dynamics and so cannot differ from it. The hidden states and the rewards need not have any physical realisation at all; they exist only within the interpretation, and the machine never observes the rewards. Appendix C establishes that machines meeting Def. 5 exist by constructing one from the known optimal solution to Sondik's POMDP.

The authors are careful about scope. The commitments are adopted because they permit precision, not because they are claimed to be realistic or the only reasonable choices; POMDPs are not the only possible formalisation of having a goal; they do not argue that all agents are rational or possess beliefs and goals. The framework requires *exact* Bayesian updating, so approximate inference — which the FEP does accommodate — falls outside it. The conclusion is offered as one worked *example* of the kind of agent definition sought, not as a settled general answer.

## Key Ideas
- **Agency as consistent interpretation, not predictive advantage:** ask whether the physical dynamics are *consistent* with an ascription of beliefs and goals, rather than whether the intentional stance out-predicts the physical stance.
- **An agent is a pair:** a system *together with* an interpretation of it as a POMDP solution — agency is not an intrinsic property of the system alone.
- **Three conceptual commitments:** systems are stochastic Moore machines; beliefs are Bayes-updated probability distributions; goals and rationality are supplied by POMDPs (expected discounted reward, optimal policy).
- **Interpretation map `ψ : M → PH`:** sends internal machine states to beliefs over an interpretation-internal hidden state space; extended here with an action function `α` and a model kernel `κ` (the "influenced filtering" of Def. 3).
- **Definition 5:** a stochastic Moore machine solves a POMDP when it has a consistent Bayesian influenced filtering interpretation *and* `ω(m) = π*(ψ(m))` — it outputs the optimal policy's action for the belief its state parameterises.
- **Parameterisation, not identity:** machine states need only parameterise beliefs; `ψ` may be non-injective, so interpretation carries an automatic notion of coarse-graining of the internal state.
- **Proposition 1:** for subjectively possible inputs, `ψ(m)` updates exactly per the Bayesian belief-state update; hence `V*(ψ(m))` is an optimal value function on the machine's state space — these machines are optimal in the same sense as belief-state machines.
- **Consistency ≠ correctness:** existence of an interpretation depends only on the machine, not the environment. An agent can have a wrong model and act optimally only relative to it — a deliberate contrast with the FEP, where the model derives from actual environment dynamics.
- **Hidden states and rewards are interpretation-only:** they need exist only mathematically, not physically; the machine never observes rewards. Even an output-less machine can have "actions" confined to the interpretation.
- **Existence is demonstrated, not assumed:** Appendix C builds a qualifying stochastic Moore machine from the known optimal solution to Sondik's POMDP.
- **Stated limits:** exact Bayesian updating only (approximate inference excluded); POMDPs are not the only formalisation of goals; the commitments are chosen for precision rather than realism.

## Connections
- [[True Believers - The Intentional Strategy and Why It Works]]
- [[Intentional Stance]]
- [[Physical Stance]]
- [[Design Stance]]
- [[Rationality Assumption]]
- [[Principle of Rationality]]
- [[Theory of Agency]]
- [[Weak Agency]]
- [[Strong Agency]]
- [[Belief]]
- [[BDI]]
- [[Ascribing Mental Qualities to Machines]]
- [[The Knowledge Level]]
- [[Intelligence Without Representation]]
- [[Markov Processes]]
- [[POMDP]]
- [[Bayesian Filtering]]
- [[Interpretation Map]]
- [[Stochastic Moore Machine]]
- [[Belief State]]
- [[Bellman Equation]]
- [[Free Energy Principle]]
- [[Active Inference]]

## Conceptual Contribution
- **Claim:** A system can be called an agent with beliefs and goals when its dynamics admit a *consistent* interpretation as solving a POMDP — that is, when its internal states can be read as parameterising Bayes-updated beliefs over hidden states and its outputs coincide with the optimal policy for those beliefs. Agency is a property of the *pair* (system, interpretation), and consistency of the ascription — not its correctness about the real environment — is what is required.
- **Mechanism:** Restrict systems to stochastic Moore machines (Def. 2). Extend the consistent Bayesian filtering interpretation of Virgo–Biehl–McGregor to a *consistent Bayesian influenced filtering interpretation* (Def. 3) by adding an action space, an action function `α : M → A`, and a model kernel `κ : H × A → P(H × I)` so that the interpreted hidden-state dynamics can be influenced by the machine. Layer a POMDP `(H, A, S, κ, r)` on top: derive belief states, the Bayes belief update `f`, the belief-state MDP, the Bellman optimal value function `V*` and optimal policy `π*`. Def. 5 then demands `ω(m) = π*(ψ(m))`. Proposition 1 proves that consistency forces `ψ(m)` to track the belief update for subjectively possible inputs, so the machine is optimal in the belief-state sense; Appendix C exhibits an instance via Sondik's POMDP.
- **Concepts introduced/used:** [[Interpretation Map]], [[Stochastic Moore Machine]], [[POMDP]], [[Bayesian Filtering]], [[Belief State]], [[Bellman Equation]], [[Intentional Stance]], [[Free Energy Principle]]
- **Stance:** formal theory / conceptual definition (with an existence example, no empirical study)
- **Relates to:** Formalises and sharpens the ascription licence argued philosophically in [[True Believers - The Intentional Strategy and Why It Works]], replacing Dennett's predictive comparison of stances with a consistency condition on dynamics; supplies a mathematical counterpart to the mentalistic vocabulary presupposed by [[BDI]] and [[Modeling Rational Agents within a BDI-Architecture]] and to the rationality postulate of [[The Knowledge Level]]; a deliberate variant of the [[Free Energy Principle]] / [[Active Inference]] programme in which the agent's model is chosen independently of the true environment; kin to [[Ascribing Mental Qualities to Machines]] on when mentalistic ascription to machines is legitimate, and a formal foil to the anti-representational line of [[Intelligence Without Representation]].

## Tags
#philosophy #agency #foundational #pomdp #bayesian-inference #active-inference #formal-methods
