# Defeating Prompt Injections by Design

**Reference:** Debenedetti, Shumailov, Fan, Hayes, Carlini, Fabian, Kern, Shi, Terzis & Tramèr (2025). *Defeating Prompt Injections by Design* (CaMeL). arXiv:2503.18813 (Google DeepMind / ETH Zürich). [URL](https://arxiv.org/abs/2503.18813). Code: <https://github.com/google-research/camel-prompt-injection>.

## Summary
CaMeL ("CApabilities for MachinE Learning") is a robust, *by-design* defence against [[Prompt Injection]] attacks on tool-using [[LLM Agents]]. Rather than trying to make the model itself injection-resistant — an approach that decade-long experience with content filters suggests will fail — CaMeL wraps an arbitrary LLM in a protective system layer that performs **explicit control- and data-flow separation** between the trusted user query and the untrusted data the agent retrieves from tools, websites, or shared memory.

The trusted query is first compiled into a structured plan: a small program whose *control flow* is fixed at parse time and whose *data flow* between steps is statically determined. Untrusted strings returned by tools are treated as inert data — they can populate variables but cannot rewrite the program, redirect tool calls, or change which downstream tools are invoked. To prevent **exfiltration over authorised channels** (the harder half of the problem, since some tools *must* be allowed to write outwards), CaMeL attaches **[[Capabilities]]** to each data value tracking its provenance and policy class; tool invocations are gated by [[Information Flow Control]] policies that check capabilities against an explicit security label lattice.

Evaluated on the [[AgentDojo]] benchmark, CaMeL **solves 77 % of tasks with provable security guarantees**, against 84 % for an undefended baseline — a small utility cost for a structural defence that does not depend on the LLM noticing the attack. The paper positions CaMeL as a successor to ad-hoc prompt-level mitigations and as a concrete instance of [[End-to-End Arguments in System Design|end-to-end]] security thinking applied to agentic AI.

## Key Ideas
- Threat model: prompt injection from any untrusted data source the agent reads — tools, web pages, files, memory, other agents.
- **Control-flow extraction:** parse the trusted user query into a *fixed* control-flow plan; downstream model calls see only data, never code.
- **Data-flow tracking:** every variable carries a provenance label; tools that consume "untrusted" labels cannot influence which subsequent tools are called.
- **Capabilities for tool calls:** classic [[Capabilities (Ambient)|capability-based]] access control transplanted to LLM tool use; security policies enforced *at the tool boundary*.
- **Provable security:** when a task is completed under CaMeL, the trace itself certifies that no untrusted data influenced control flow — a property auditable post hoc.
- **Empirical cost:** 77 % vs 84 % task success — graceful degradation rather than catastrophic refusal.
- **Open source:** reference implementation released; integrates with existing agent frameworks via tool-call interception.

## Connections
- [[Prompt Injection]]
- [[AgentDojo]]
- [[LLM Agents]]
- [[Tool Use]]
- [[Capabilities]]
- [[Information Flow Control]]
- [[Agent Security]]
- [[AI Agents Under Threat]]
- [[SoK The Attack Surface of Agentic AI]]
- [[Open Challenges in Multi-Agent Security]]
- [[Security Kernel Lambda Calculus]]
- [[A Language-Based Approach To Prevent DDoS]]
- [[Distributed Security]]
- [[Model Context Protocol]]

## Conceptual Contribution
- **Claim:** Prompt injection is structurally unsolvable at the model layer; it must be eliminated by enforcing a strict separation between *code* (the trusted query) and *data* (everything else) at the agent runtime, using classical [[Capabilities|capability-based]] [[Information Flow Control]] rather than ML-based content classification.
- **Mechanism:** Compile the user query into a fixed control-flow program; route all retrieved data through tagged variables; gate every tool invocation by capability-checked information-flow policies. The LLM's outputs can populate data fields but never alter control flow or bypass capability checks.
- **Concepts introduced/used:** [[CaMeL]], [[Control-Flow Integrity]], [[Data-Flow Tracking]], [[Capabilities]], [[Information Flow Control]], [[Prompt Injection]], [[Tool Use]], [[Agent Security]], [[Provable Security (Agents)]]
- **Stance:** systems / engineering with light formal grounding
- **Relates to:** Spiritual successor to [[A Language-Based Approach To Prevent DDoS]] and [[Security Kernel Lambda Calculus]] for agent runtimes; an architectural realisation of the threat model catalogued in [[SoK The Attack Surface of Agentic AI]] and the multi-agent threats surveyed in [[Open Challenges in Multi-Agent Security]]; companion to [[AgentDojo]] (the benchmark on which it is evaluated).

## Tags
#agent-security #prompt-injection #llm-agents #capabilities #information-flow-control #tool-use
