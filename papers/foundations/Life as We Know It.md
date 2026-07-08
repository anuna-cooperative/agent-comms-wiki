# Life as we know it

**Reference:** Friston, K. (2013). *Life as we know it.* Journal of the Royal Society Interface, 10(86):20130475. (The Wellcome Trust Centre for Neuroimaging, Institute of Neurology, University College London.) DOI: [10.1098/rsif.2013.0475](https://doi.org/10.1098/rsif.2013.0475). PMID 23825119; PMCID PMC3730701. [URL](https://royalsocietypublishing.org/doi/10.1098/rsif.2013.0475).

## Summary
This is the anchor statement of the [[Free Energy Principle]]: the paper offers what Friston calls a *heuristic proof* — accompanied by simulations of a primordial soup — that life, understood as biological self-organisation, is "an inevitable and emergent property of any (ergodic) random dynamical system that possesses a [[Markov Blanket]]." The setting is a [[Random Dynamical System]]: states flow under a deterministic vector field perturbed by random fluctuations, described by a stochastic differential equation. The ergodic assumption is what buys the interpretive leverage — over sufficient time the system's trajectory visits states in proportion to an invariant ergodic density, so *how long a system spends in a state* can be read as *how probable that state is for that system*. Under ergodicity the long-term average of surprise (the negative log probability of a state) is the entropy of the ergodic density, and a system that persists is, definitionally, one whose states remain in a small, characteristic set.

The argument then turns on a statistical rather than a thermodynamic boundary. If coupling among an ensemble of subsystems is mediated by *short-range forces*, the states of remote subsystems must be conditionally independent; these independencies induce a Markov blanket separating internal from external states. The blanket itself splits by the direction of influence, giving the fourfold partition the paper is famous for: **external states** ψ (states of the world that cause sensory states and depend on action), **sensory states** s (a probabilistic mapping from external states and action), **active states** a (which depend on sensory and internal states), and **internal states** λ (which cause action and depend on sensory states). Internal and external states are thereby [[d-separation|d-separated]]: they can influence each other only *through* the blanket, and so each is condemned to know the other only by inference. Applying a [[Helmholtz Decomposition]] to the flow of the ergodic density (whose evolution obeys the [[Fokker-Planck Equation]]) separates it into a gradient descent on the Gibbs energy `G = −ln p(ψ,s,a,λ)` plus a divergence-free solenoidal component. Read against that decomposition, the flow of internal states *appears to* perform a gradient descent on a variational free energy — a functional of an arbitrary variational density `q(ψ|λ)` parametrised by the internal states, and a quantity that upper-bounds surprise. Because this is exactly the quantity optimised in [[Variational Inference|variational Bayesian inference]], the internal states appear to encode posterior beliefs about external causes, while the active states appear to change the world so that sensations conform to those beliefs. Internal states plus their blanket therefore "appear to engage in active Bayesian inference": to model, and act on, their world so as to preserve their functional and structural integrity — [[Homeostasis|homoeostasis]] and a simple form of [[Autopoiesis|autopoiesis]]. Friston is consistently careful to use *as-if* language: the inference is an appearance forced by the geometry of the dynamics, not an explicit representational computation posited inside the system.

The primordial soup simulation illustrates the emergence rather than proving it. An ensemble of 128 elemental subsystems is given two coupled sets of dynamics: Newtonian motion under a strong inverse-square repulsive force and a weaker attractive force that depends on the subsystems' electrochemical states; and electrochemical dynamics chosen to have a Lorenz attractor, coupled only to spatial neighbours through an adjacency matrix. Heterogeneity is introduced by randomly selecting a third of the subsystems and preventing them from electrochemically influencing others (zeroing the corresponding column of the adjacency matrix), making them "functionally closed." From random initial conditions the ensemble self-organises: a cluster of internal subsystems forms, enclosed by a membrane-like layer of sensory and active subsystems — a Markov blanket that was nowhere specified in the equations of motion. The internal electrochemical states come to predict the external structural states, which is precisely the appearance of a generative model.

## Key Ideas
- **The thesis:** any ergodic random dynamical system possessing a Markov blanket will *appear* to minimise a variational free energy functional of its blanket states, hence appear to engage in active Bayesian inference. Life is presented as an inevitable consequence of that setup, not an additional assumption.
- **Ergodicity as the interpretive bridge:** if time-averages converge, state occupancy *is* probability. A system that persists occupies a small set of states, so persistence = low long-term average surprise = low entropy of the ergodic density.
- **Short-range forces ⇒ conditional independence ⇒ a Markov blanket.** The boundary is statistical, derived from the sparsity of coupling, not stipulated as a physical membrane.
- **The fourfold partition:** external ψ, sensory s, active a, internal λ. Sensory states are caused by external states; active states are caused by internal states; internal and external states are d-separated by the blanket `{s, a}` and can reach each other only through it.
- **Helmholtz decomposition of the flow:** the flow of the ergodic density splits into a gradient descent on Gibbs energy `G(ψ,s,a,λ) = −ln p(ψ,s,a,λ)` and a solenoidal (divergence-free) circulation on its isocontours.
- **Free energy bounds surprise:** `F(s,a,λ)` is a functional of a variational density `q(ψ|λ)` parametrised by internal states; by Gibbs' inequality the gap between free energy and surprise is a non-negative divergence, so minimising `F` both bounds surprise and drives `q` toward the true posterior over external causes.
- **[[Active Inference]] has two limbs:** internal states minimise free energy by changing beliefs (perception); active states minimise it by changing the world so that sensory states conform to those beliefs (action). Together they place an upper bound on the dispersion of the system's states.
- **The model is not chosen — it is the environment's own density.** The generative model is implicit in `p(ψ,s,a,λ)`, the invariant density of the very system being described. There is no free hand to posit a mistaken model.
- **"Appear to" is load-bearing.** Friston does not claim systems *do* Bayesian inference; he claims their dynamics are indistinguishable from a system that does. The inferential vocabulary is a description that the mathematics licenses, not a mechanism it postulates.
- **Primordial soup simulation:** 128 subsystems, Newtonian mechanics (inverse-square repulsion, weaker electrochemically-dependent attraction) plus Lorenz-attractor electrochemical dynamics coupled through local adjacency; a randomly chosen third made functionally closed. A Markov blanket — internal core, sensory/active membrane — self-organises out of random initial conditions.
- **Autopoiesis without teleology:** homoeostasis and structural integrity fall out as consequences of the dynamics, rather than being written in as objectives.

## Connections
- [[Free Energy Principle]]
- [[Active Inference]]
- [[Markov Blanket]]
- [[Bayesian Filtering]]
- [[Interpreting Systems as Solving POMDPs]]
- [[Variational Inference]]
- [[Variational Free Energy]]
- [[Surprisal]]
- [[Random Dynamical System]]
- [[Ergodicity]]
- [[Fokker-Planck Equation]]
- [[Helmholtz Decomposition]]
- [[Solenoidal Flow]]
- [[Conditional Independence]]
- [[d-separation]]
- [[Generative Model]]
- [[Autopoiesis]]
- [[Homeostasis]]
- [[Self-Organisation]]
- [[Causal Diagrams for Empirical Research - Pearl]]
- [[Causality - Pearl]]
- [[Theory of Self-Reproducing Automata]]
- [[A Mathematical Theory of Communication]]
- [[Intelligence Without Representation]]
- [[True Believers - The Intentional Strategy and Why It Works]]
- [[Intentional Stance]]
- [[Belief]]
- [[POMDP]]

## Conceptual Contribution
- **Claim:** Any ergodic random dynamical system that possesses a Markov blanket will appear to minimise a variational free energy functional of its blanket states — an upper bound on the surprise of those states — and therefore will appear to engage in active Bayesian inference: to model, and act upon, its world so as to preserve its structural and functional integrity. Biological self-organisation, on this account, is not an extra ingredient added to physics but an inevitable appearance of it wherever a statistical boundary exists.
- **Mechanism:** Model the ensemble as a stochastic differential equation with random fluctuations and assume ergodicity, so that the system has an invariant density whose evolution obeys the Fokker–Planck equation. Observe that short-range coupling makes remote subsystems conditionally independent, inducing a Markov blanket; partition states into external ψ, sensory s, active a and internal λ, with `{s, a}` d-separating λ from ψ. Apply a Helmholtz decomposition to the flow, splitting it into a gradient descent on Gibbs energy `G = −ln p(ψ,s,a,λ)` and a solenoidal component. Recast the internal-state flow as gradient descent on a free energy `F(s,a,λ)` defined over a variational density `q(ψ|λ)` parametrised by internal states; Gibbs' inequality makes `F` an upper bound on surprise, whose minimisation drives `q` toward the posterior `p(ψ|s,a)`. Perception is then the internal-state limb of this descent and action the active-state limb. Illustrate with 128 coupled subsystems (Newtonian motion + Lorenz electrochemical dynamics, a third of them functionally closed), in which a Markov blanket with a membrane-like sensory/active boundary emerges spontaneously.
- **Concepts introduced/used:** [[Markov Blanket]], [[Free Energy Principle]], [[Active Inference]], [[Variational Free Energy]], [[Surprisal]], [[Ergodicity]], [[Random Dynamical System]], [[Fokker-Planck Equation]], [[Helmholtz Decomposition]], [[Generative Model]], [[Autopoiesis]], [[Bayesian Filtering]]
- **Stance:** formal theory / heuristic proof with illustrative simulation (no empirical study; the simulation demonstrates emergence, it does not establish the general claim)
- **Relates to:** Provides the canonical formulation against which [[Interpreting Systems as Solving POMDPs]] positions itself. Biehl & Virgo require only that an ascription of beliefs and goals be *consistent* with a system's dynamics — an agent may hold an outright wrong model of its environment and still qualify, because the interpretation's hidden states and rewards need have no physical realisation and existence of the interpretation depends on the machine alone. Here the opposite holds: the generative model is not chosen by an interpreter but *derived from the actual environment's dynamics* — it simply is the invariant density `p(ψ,s,a,λ)` of the coupled system — so it cannot come apart from the world it models, and the question of a wrong model does not arise. Consistency versus correctness is exactly the axis of difference; a further one is that Biehl & Virgo demand exact Bayesian updating whereas the FEP is built around approximate (variational) inference. The Markov blanket construction inherits its conditional-independence machinery from Pearl ([[Causality - Pearl]], [[Causal Diagrams for Empirical Research - Pearl]]). The account of persistence and boundary formation answers, in dynamical-systems terms, the self-maintenance questions posed by [[Theory of Self-Reproducing Automata]], and it offers a reading of agent-talk that neither asserts explicit internal representation — cf. [[Intelligence Without Representation]] — nor merely licenses it pragmatically as [[True Believers - The Intentional Strategy and Why It Works]] does; the inferential description is instead forced by the geometry of the flow.

## Tags
#foundational #active-inference #free-energy-principle #markov-blanket #bayesian-inference #dynamical-systems #agency #self-organisation
