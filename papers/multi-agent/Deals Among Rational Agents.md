# Deals Among Rational Agents

**Reference:** Rosenschein, J.S. & Genesereth, M.R. (1985). *Proceedings IJCAI-85*, Los Angeles, CA, pp. 91–99. Source file: `rosenschein-genesereth-deals-among-rational-agents.pdf`. [URL](http://logic.stanford.edu/publications/rosenschein/deals.pdf)

## Summary
Rosenschein and Genesereth present a game-theoretic framework for interactions between intelligent agents with potentially disparate goals. They drop the "benevolent agent" assumption that pervaded early DAI and ask instead: what can purely rational, self-interested agents achieve through communication? The answer is given via payoff matrices, *rational offer groups*, and binding *deals* — coalitions of joint moves that no rational agent should unilaterally reject.

They prove that communication, modelled as exchanging offer groups, lets rational agents coordinate on jointly optimal outcomes that are unreachable without communication. The results are illustrated on Prisoner's Dilemma, multiple-best-plan, and similar bargaining games, showing that binding promises transform defection-prone situations into cooperation. The paper is an early formal bridge between game theory, distributed AI, and agent communication.

## Key Ideas
- Rejects the benevolent-agent assumption; models agents as utility-maximisers with private goals.
- *Rational move* = a move no agent should ever be persuaded to abandon given common knowledge of rationality.
- *Offer group* = set of joint moves an agent is willing to commit to; *deal* = intersection of accepted offer groups.
- Theorems: existence of non-null rational offer groups; lower bounds on guaranteed payoffs; a Group Rationality Theorem showing communication can dominate no-communication outcomes.
- Shows rational cooperation in the Prisoner's Dilemma once binding deals are available.

## Connections
- [[Agent-Oriented Programming]]
- [[Negotiation]]
- [[Rubinstein Bargaining]]
- [[Contract Net Protocol]]
- [[Multiagent Systems]]
- [[Mechanism Design]]
- [[Cheap Talk]]
- [[Nash Equilibrium]]
- [[Commitment]]

## Conceptual Contribution
- **Claim:** Communication among rational, non-benevolent agents can be given a precise game-theoretic semantics in which binding offers transform achievable payoff sets.
- **Mechanism:** Payoff matrices + rationality assumptions (minimal/separate/unique move rationality) + rational offer groups whose intersections define enforceable deals.
- **Concepts introduced/used:** [[Rational Offer Groups]], [[Binding Deal]], [[Benevolent Agent Assumption]], [[Individual Rationality]], [[Group Rationality]].
- **Stance:** foundational/formal (game-theoretic).
- **Relates to:** Shoham's [[Agent-Oriented Programming]] cites this work as one of the key precursors for modelling agent societies without assuming shared goals; AGENT-0's "commit" primitive is the programming-language analogue of the binding deals formalised here. The paper also foreshadows [[Negotiation]] protocols, auction-based coordination, and modern [[Mechanism Design]] for MAS.

## Tags
#game-theory #negotiation #rational-agents #foundational #dai #communication
