# A Security Kernel Based on the Lambda-Calculus

**Reference:** Jonathan A. Rees (1996). *MIT AI Laboratory Memo No. 1564*. Source file: `AIM-1564.pdf`

## Summary
Rees describes Scheme 48, a programming environment whose design is guided by operating-system security principles. The security kernel is W7, a call-by-value lambda-calculus with extensions for abstract data types, object mutation, and hardware access. Each user or subsystem runs in a separate evaluation environment holding the objects representing that user's privileges; because environments determine availability of object references, protection and sharing are controlled by construction.

The paper describes experience with Scheme 48 as the programming environment for Cornell's mobile robots (no underlying OS) and as a secure multi-user workstation environment, arguing that lexical scope + first-class environments are a natural substrate for capability-style security among cooperating agents.

## Key Ideas
- Lambda-calculus as minimal security kernel via capability-style environments.
- Scheme 48 (W7): modules, macros, dynamic isolation, portable across platforms.
- Trust mediated by controlling which names bind to which objects.
- Authentication via capsules (tamper-proof labelled objects).
- Applied to robots and multi-user Scheme environments.

## Connections
- [[A Language-Based Approach To Prevent DDoS]]
- [[Seven Turrets Of Babel]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** Lexical scope and first-class environments in a lambda-calculus variant (W7) are a sufficient security kernel: protection reduces to controlling which names bind to which object references.
- **Mechanism:** Implements Scheme 48 as a capability-style environment where each user/subsystem runs in its own environment; authentication via capsules (tamper-proof labelled objects); deployed on Cornell mobile robots (no OS) and as multi-user workstation environment.
- **Concepts introduced/used:** [[Capability Security]], [[Lambda Calculus]], [[Lexical Scope]], [[Scheme 48]], [[Capsules]], [[Distributed Security]], [[Multi-Agent Systems]]
- **Stance:** foundational / engineering
- **Relates to:** Provides a principled, capability-based alternative to the input-validation discipline of [[Seven Turrets Of Babel]] and the static DDoS analysis of [[A Language-Based Approach To Prevent DDoS]]; relevant to sandboxing malicious tools described in [[MalTool Malicious Tool Attacks]].

## Tags
#security #capabilities #lambda-calculus #foundational
