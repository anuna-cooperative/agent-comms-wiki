# MalTool: Malicious Tool Attacks on LLM Agents

**Reference:** Hu, Jia, Li, Song, Gong (2026). *arXiv:2602.12194* (Duke, UC Berkeley). Source file: `2602.12194v2.pdf`. [URL](https://arxiv.org/abs/2602.12194)

## Summary
This paper presents the first systematic study of *code-level* malicious tool attacks on LLM agent ecosystems (MCP, Skills, mcp.so, skillsmp). Whereas prior work focused on crafting misleading tool names and descriptions, the authors show that genuinely harmful behaviour must be embedded in a tool's implementation. They propose a CIA (confidentiality/integrity/availability) taxonomy of 12 concrete malicious behaviours (data exfiltration, credential abuse, data poisoning, file deletion, RCE downloading, CPU/GPU hijacking, DoS).

They build MalTool, a coding-LLM framework that iteratively synthesizes standalone and Trojan malicious tools using a behaviour-specific system prompt, diversity guidance, and an execution-based verifier. The result: 1,200 standalone malicious tools and 5,287 real-world tools with injected malicious behaviours. Detection methods (VirusTotal, Cisco MCP Scanner, MCPScan) perform poorly, motivating new defences.

## Key Ideas
- CIA taxonomy of malicious tool behaviours in agent settings.
- Automatic generation pipeline: system prompt + coding LLM + execution-based verifier.
- Trojan construction by embedding malicious logic in benign tool code.
- Existing malware and MCP-specific scanners fail on both false-positives and false-negatives.
- Dataset released for benign tools only to minimize misuse.

## Connections
- [[Model Context Protocol]]
- [[AI Agents Under Threat]]
- [[LLM Agents]]
- [[Trust and Reputation]]

## Conceptual Contribution
- **Claim:** Truly harmful behaviour in [[LLM Agents]] ecosystems lives in tool *implementations*, not in their descriptions; prior description-level red-teaming misses the dominant attack class, and current scanners miss it too.
- **Mechanism:** Introduces a CIA taxonomy of 12 malicious behaviours; builds MalTool, a coding-LLM pipeline (behaviour-specific system prompt + diversity guidance + execution-based verifier) that produces standalone and Trojan tools; benchmarks VirusTotal, Cisco MCP Scanner, MCPScan and shows poor detection.
- **Concepts introduced/used:** [[Tool Use]], [[Model Context Protocol]], [[Trojan Tools]], [[Prompt Injection]], [[Agent Security]], [[LLM Agents]], [[Distributed Security]]
- **Stance:** empirical
- **Relates to:** Deepens the tool/MCP threat surface catalogued in [[AI Agents Under Threat]] and [[Survey Of Agent Interoperability Protocols]]; motivates language-based defences akin to [[A Language-Based Approach To Prevent DDoS]] and capability isolation of [[Security Kernel Lambda Calculus]].

## Tags
#security #llm-agents #mcp #malicious-tools
