# On the Pitfalls of Measuring Emergent Communication

**Reference:** Lowe, Foerster, Boureau, Pineau, Dauphin (2019). *AAMAS 2019 (Proc. 18th Intl. Conf. on Autonomous Agents and Multiagent Systems)*. Source file: `p693.pdf`

## Summary
This paper critically examines metrics used to detect and measure emergent communication in multi-agent reinforcement learning. The authors show that commonly used indicators — such as speaker consistency (SC), context independence (CI), mutual information between messages and actions, and message-entropy — can be misleading: agents trained with a communication channel that does not influence their behavior may still exhibit high values on these metrics, producing the illusion of communication.

To disentangle the phenomenon, they propose decomposing communication into positive signaling (messages carry information about a speaker's observations) and positive listening (messages influence a listener's subsequent actions). They introduce causal influence of communication (CIC), a causal-intervention-based metric measuring how an agent's message changes another agent's action distribution, and demonstrate its properties on matrix communication games (MCGs). They offer concrete recommendations for when each metric should be trusted.

## Key Ideas
- Speaker consistency can be positive even when no communication happens.
- Separate positive signaling from positive listening.
- Causal influence of communication (CIC) via interventions on messages.
- Matrix Communication Games as a minimal testbed.
- Entropy-based metrics are shape-dependent and deceptive.

## Connections
- [[Multi-Agent Systems]]
- [[LLM Agents]]
- [[Agent Communication Languages]]
- [[Speech Act Theory]]

## Conceptual Contribution
- **Claim:** Popular metrics for emergent communication in MARL cannot distinguish real communication from spurious correlations; communication must be analysed causally, decomposed into signalling and listening.
- **Mechanism:** The authors construct Matrix Communication Games where a policy with a non-influential communication channel still scores high on speaker consistency, context independence, mutual information, and entropy-based measures. They then define positive signalling and positive listening as orthogonal properties, and introduce Causal Influence of Communication (CIC) as a do-calculus intervention that measures how replacing the sent message would change the listener's action distribution.
- **Concepts introduced/used:** [[Positive Signalling]], [[Positive Listening]], [[Causal Influence of Communication]], [[Speaker Consistency]], [[Context Independence]], [[Matrix Communication Games]], [[Emergent Communication]]
- **Stance:** critique
- **Relates to:** Sharpens the empirical agenda of [[Emergence of Grounded Compositional Language in Multi-Agent Populations]] and [[Emergent Communication]]; its causal framing complements the decision-theoretic message-value account in [[Towards Automating the Evolution of Linguistic Competence]] and offers a verifiability foothold missing from the mentalistic semantics critiqued by [[Agent Communication Languages - Rethinking the Principles]].

## Tags
#emergent-communication #multi-agent-rl #metrics #deep-learning
