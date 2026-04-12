# A Language-Based Approach to Prevent DDoS Attacks in Distributed Financial Agent Systems

**Reference:** Fazeldehkordi, Owe, Ramezanifarkhani (2018). *University of Oslo*. Source file: `A language-based approach to prevent DDoS attacks in distributed financial agent systems.pdf`. URL: https://www.mn.uio.no/ifi/english/people/emeriti/olaf/papers/ddosesoricsfinsec19.pdf

## Summary
The authors propose adding a language-based layer of defense against DoS/DDoS to distributed financial agent systems built on the actor model with asynchronous method calls and futures (in the style of Creol/ABS). Because such languages make it cheap to launch non-blocking floods, they adapt a static analysis for detecting call-flooding cycles to the many-to-one DDoS setting.

The analysis builds per-method control-flow graphs, identifies cycles, and classifies nodes as strongly- or weakly-reachable to detect unbounded method-call generation at compile time. They distinguish one-to-one, many-to-one, and one-to-many flooding, and illustrate with a publish/subscribe newsletter example where future-based optimization accidentally enables a DoS against subscribers.

## Key Ideas
- Static detection of call-based flooding in actor-model languages with futures.
- Classification: one-to-one, many-to-one, one-to-many flooding.
- Strong vs weak reachability in control-flow cycles.
- Instantiation flooding (unbounded object creation) as a resource-exhaustion vector.
- Application to financial service subscriber systems.

## Connections
- [[Seven Turrets Of Babel]]
- [[Security Kernel Lambda Calculus]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** Actor-based agent languages with asynchronous futures make DoS/DDoS cheap to launch inadvertently, and static analysis of call-flow cycles can prevent it at compile time.
- **Mechanism:** Builds per-method control-flow graphs, detects strongly/weakly-reachable cycles that generate unbounded calls; extends from one-to-one to many-to-one and one-to-many flooding; illustrated on a Creol/ABS publish/subscribe newsletter.
- **Concepts introduced/used:** [[Static Analysis]], [[Actor Model]], [[Futures]], [[DDoS]], [[Control-Flow Graph]], [[Distributed Security]], [[Multi-Agent Systems]]
- **Stance:** engineering
- **Relates to:** Shares the language-level-security stance of [[Seven Turrets Of Babel]] and [[Security Kernel Lambda Calculus]]; addresses a threat class complementary to the tool-level attacks of [[MalTool Malicious Tool Attacks]] and the broad landscape of [[AI Agents Under Threat]].

## Tags
#security #static-analysis #ddos #actor-model
