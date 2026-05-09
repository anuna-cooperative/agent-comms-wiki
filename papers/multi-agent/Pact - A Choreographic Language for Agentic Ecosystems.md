# Pact: A Choreographic Language for Agentic Ecosystems

**Reference:** Gopinathan, K., Feser, J., Naim, M., Tavares, Z. & Bingham, E. (2026). *2nd International Workshop on Choreographic Programming (CP 2026)*, Boulder, CO, June 15–19. arXiv:2605.03143v1 [cs.PL], 4 May 2026 (talk paper). Basis Research Institute. [URL](https://arxiv.org/abs/2605.03143)

## Summary
Gopinathan et al. extend [[Choreographic Programming]] to the open-systems setting where participants are self-interested and may not faithfully execute a protocol. Choreographies (Montesi 2023; Bates et al. 2025) give correct-by-construction, deadlock-free distributed protocols by writing one global program that is mechanically projected to local endpoints, but they assume cooperative participants — they cannot answer *why* an autonomous agent should follow the projected protocol. Pact answers that question by adding three operators to a core choreographic calculus: `agent.choose(τ)` for explicit strategic non-determinism, `agent.values(x)` for declared utility dependencies, and `world.choose(τ)` for exogenous "nature" variables that capture each agent's priors over the environment. Every Pact program then maps unambiguously to a formal extensive-form game.

The headline analysis is a decision-policy solver built on the [[Memo Programming Language]] (Chandra et al. 2025), a probabilistic-programming DSL for cognitive theory-of-mind models. From the projected Pact program a `memo` model is constructed in which each role recursively simulates the other to depth ℓ; running inference yields a level-ℓ bounded-rational policy mapping observations to choices. Applied to the canonical book-seller choreography the solver recreates Akerlof's [[Market for Lemons]]: at depth 0 the buyer naïvely treats price as a signal of quality and the seller exploits this; as ℓ grows the acceptance probability flattens. The implementation is an embedded Python DSL on top of the [[Effectful]] algebraic-effects library, with endpoint projection realised as effect handlers. The paper is positioned as preliminary work; next steps named are formalising the semantics, proving correctness of projection-to-game, and adding incentive-compatibility / equilibrium / mechanism-design analyses.

## Key Ideas
- *Choreography + game theory*: a global protocol gets three game-theoretic operators (choice, value, nature) so that endpoint projection produces both a runnable program and a formal game.
- *`values` as type signature, not utility*: declarations name the variables that influence an agent's payoff but not the function — utilities are private and adversarially incentive-incompatible to disclose. The role of `values` is to constrain which protocols are mutually negotiable.
- *Theory-of-mind solver via `memo`*: bounded-rational level-ℓ recursion over agent models, with the recursion bottoming out at naïve priors at ℓ = 0.
- *Lemons re-derived from a choreography*: information asymmetry over an exogenous `book.quality` variable is enough to reproduce Akerlof's unravelling result on the bookseller protocol.
- *Algebraic-effects implementation*: endpoint projection implemented as effect handlers in Python (`effectful`); choreography is a single program that runs differently depending on which handler ([[Endpoint Projection]]) is installed.
- *Motivation framed against LLM agent failure modes*: prompt injection, sycophancy, and coercion of LLM agents are cited as the reasons untrusted-counterpart coordination needs formal protocol artefacts rather than free-form natural-language negotiation.

## Connections
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Memo Programming Language]]
- [[Market for Lemons]]
- [[Mentalistic Semantics]]
- [[Public Semantics]]
- [[Commitment-based Semantics]]
- [[Flexible Protocol Specification and Execution]]
- [[A Commitment-Based Approach to Agent Communication]]
- [[ACL Rethinking Principles]]
- [[Verifiable Semantics for ACLs]]
- [[Agent Communication And Institutional Reality]]
- [[Intention Is Choice with Commitment]]
- [[Deals Among Rational Agents]]
- [[BDI]]
- [[Theory of Mind]]
- [[Mechanism Design]]
- [[Negotiation]]
- [[Game-Theoretic Trust]]
- [[Why AI Agents Communicate In Human Language]]

## Conceptual Contribution
- **Claim:** Choreographic protocols for autonomous-agent ecosystems should make agent strategy first-class — explicit choices, declared utility dependencies, and exogenous priors — so that every protocol corresponds to a formal game and can be analysed for whether self-interested agents will participate.
- **Mechanism:** Three new constructs added to a core choreographic calculus (`agent.choose`, `agent.values`, `world.choose`); a structural map from Pact programs to extensive-form games; a level-ℓ bounded-rational decision-policy solver built by translating the projected program into a [[Memo Programming Language]] theory-of-mind model and running probabilistic inference over it; an embedded-DSL implementation in Python via algebraic effects realising endpoint projection.
- **Concepts introduced/used:** [[Choreographic Programming]], [[Endpoint Projection]], [[Theory of Mind]], [[Memo Programming Language]], [[Bounded Rationality]], [[Market for Lemons]], [[Mechanism Design]], [[Algebraic Effects]], [[Negotiation]], [[Game-Theoretic Trust]], [[Mentalistic Semantics]]
- **Stance:** position / preliminary engineering (CP 2026 workshop talk paper)
- **Relates to:** A contemporary LLM-era restatement of the *individual-rationality* answer to "why follow a protocol?" first formalised by [[Deals Among Rational Agents]] (Rosenschein & Genesereth 1985) and lifted to mental attitudes by [[Intention Is Choice with Commitment]] (Cohen & Levesque 1990). The paper is structurally adjacent to — but does not engage — the entire commitment-protocol tradition: [[Flexible Protocol Specification and Execution]] (Yolum & Singh 2002) gives a global protocol semantics in the [[Event Calculus]] with explicit `Create / Discharge / Cancel / Release / Assign / Delegate` operations whose runs project to local agents in a way directly analogous to choreographic endpoint projection, and [[A Commitment-Based Approach to Agent Communication]] (Fornara & Colombetti 2004) gives an operational FSM semantics for the same primitives. [[ACL Rethinking Principles]] (Singh 1998) and [[Verifiable Semantics for ACLs]] (Wooldridge 1998) anticipate the central limitation: a semantics grounded in agent utilities and recursive belief models is unverifiable from message traces alone — the very failure modes the paper opens with (prompt injection, sycophancy, coercion) destabilise the priors and rationality assumptions the solver depends on. The Lemons demo, taken at face value, is an argument for *institutional / commitment* mechanisms (warranties, refund obligations, certification) of the kind Singh's programme articulates rather than for theory-of-mind solving. The constructive synthesis the paper does not propose is to layer commitment operations onto the choreographic substrate so that protocols carry both a public, observable commitment trace (Singh-style verifiability) and a game-theoretic acceptability analysis (Pact-style strategic reasoning); choreographies are a particularly natural host because endpoint projection already gives the global-to-local move that [[Commitment Machines]] approximates by FSM compilation. On the LLM-agent side the paper's diagnosis converges with [[Why AI Agents Communicate In Human Language]] (formal protocol artefacts beat free-form natural-language negotiation) and complements the standardisation argument of [[LLM Agent Communication Protocol Requires Urgent Standardization]].

## Tags
#choreographic-programming #game-theory #protocols #llm-agents #mentalistic-semantics #theory-of-mind #position-paper #mechanism-design
