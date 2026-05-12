# AgentDojo: A Dynamic Environment to Evaluate Prompt Injection Attacks and Defenses for LLM Agents

**Reference:** Debenedetti, Zhang, Balunović, Beurer-Kellner, Fischer & Tramèr (2024). *AgentDojo: A Dynamic Environment to Evaluate Prompt Injection Attacks and Defenses for LLM Agents.* NeurIPS 2024 Datasets & Benchmarks Track. arXiv:2406.13352 (ETH Zürich). [URL](https://arxiv.org/abs/2406.13352). Project: <https://agentdojo.spylab.ai/>.

## Summary
AgentDojo is the first benchmark designed to evaluate the *adversarial robustness* of tool-using [[LLM Agents]] against [[Prompt Injection]] attacks in realistic settings. The authors observe that existing prompt-injection evaluations are either toy (single-turn, one tool) or static (a fixed adversarial corpus that defences quickly memorise). AgentDojo instead provides an **extensible execution environment**: 97 realistic multi-step tasks across four simulated domains (Slack-like workspace, e-banking, travel booking, e-mail client) plus 629 injection test cases drawn from a structured threat taxonomy, with a clean separation between *user tasks*, *injection tasks*, and *defence wrappers*.

Each evaluation pair consists of (a) a legitimate user goal the agent must achieve and (b) an attacker-chosen secondary goal injected via tool output, document content, or third-party message. A run "succeeds for the attacker" if the agent completes the injected task; it "succeeds for the user" if the original goal is met regardless. This separation surfaces realistic costs: aggressive defences may stop attacks but also break the agent.

Empirically, state-of-the-art LLMs solve **less than 66 %** of the legitimate tasks even in the absence of attacks. Existing prompt-injection attacks succeed against the best agents in **under 25 %** of cases, and existing defences (delimiters, instruction-paraphrase detectors, secondary injection-detector LLMs) drop the attack success rate to ~8 % — leaving a wide gap from the "no attacks" baseline. AgentDojo has since become the standard arena for new defences (e.g. [[Defeating Prompt Injections by Design|CaMeL]]) and adaptive attacks.

## Key Ideas
- **Four realistic environments:** Slack-style workspace, e-banking, travel booking, e-mail client — each with tens of stateful tools.
- **97 user tasks × 629 injection tests:** taxonomised by attacker goal (data exfiltration, unauthorised action, denial of service, etc.).
- **Dynamic, extensible API:** new tasks/attacks/defences pluggable as Python classes; no fixed leaderboard.
- **Two orthogonal success criteria:** *user-task success* and *attack success* are measured independently — surfacing the security–utility tradeoff.
- **Attack catalogue:** indirect injection via tool returns, document poisoning, conversation hijack, social engineering; adaptive variants supported.
- **Defence catalogue:** instruction delimiters, role labels, secondary classifier, tool-call gating, full-system mitigations like CaMeL.
- **Headline numbers:** best agents solve <66 % of clean tasks; attacks succeed <25 % unaided; ~8 % with current defences — but still a gap, especially for adaptive attacks.

## Connections
- [[Prompt Injection]]
- [[Defeating Prompt Injections by Design]]
- [[LLM Agents]]
- [[Tool Use]]
- [[Agent Security]]
- [[AI Agents Under Threat]]
- [[SoK The Attack Surface of Agentic AI]]
- [[MalTool Malicious Tool Attacks]]
- [[Open Challenges in Multi-Agent Security]]
- [[Distributed Security]]
- [[Model Context Protocol]]

## Conceptual Contribution
- **Claim:** Prompt-injection robustness must be measured *in the wild* — across realistic multi-tool tasks where the agent must do useful work while exposed to attacker-controlled inputs. Static benchmarks systematically over-estimate defence strength; an extensible environment that supports adaptive attack/defence development is the right empirical instrument.
- **Mechanism:** A Python execution environment with four domains, hundreds of stateful tools, structured user-task / injection-task pairs, and parallel success metrics; defences and attacks register as plug-ins so new variants can be evaluated against existing ones.
- **Concepts introduced/used:** [[AgentDojo]], [[Prompt Injection]], [[Indirect Prompt Injection]], [[Adaptive Attack]], [[Tool Use]], [[Agent Security]], [[Security-Utility Tradeoff]]
- **Stance:** empirical / benchmark
- **Relates to:** Direct companion to [[Defeating Prompt Injections by Design]] (the CaMeL defence); operationalises the attack-surface taxonomy of [[SoK The Attack Surface of Agentic AI]] and the multi-agent threat catalogue of [[Open Challenges in Multi-Agent Security]]; complements tool-level threat studies like [[MalTool Malicious Tool Attacks]] and [[ClawWorm Self-Propagating Attacks Across LLM Agent Ecosystems]].

## Tags
#agent-security #prompt-injection #llm-agents #benchmark #tool-use #neurips
