# PKI Layer Cake: New Collision Attacks Against the Global X.509 Infrastructure

**Reference:** Dan Kaminsky, Meredith L. Patterson, and Len Sassaman (2009). *Black Hat USA / IOActive technical report*. Source file: `1299769.pdf`. [URL](https://ioactive.com/pdfs/PKILayerCake.pdf)

## Summary
Presents several new classes of attacks against the X.509 certificate infrastructure: MD2 preimage exploitation of VeriSign's still-trusted root, PKCS#10 Subject Name confusion attacks exploiting inconsistent ASN.1 BER parsing between CAs and browsers (multiple CNs, OID leading-zero padding, integer overflow, early null terminators), SQL injection through PKCS#10 subject names, generic SSL client-authentication bypasses, and EV-certificate hijacking via mixed script content.

The paper is largely a case study in how ambiguity at the interface between components — in parsers, in semantics of fields like Common Name, in trust-store EKU handling — turns into exploitable security pathologies. It is of interest to agent-communication research as a cautionary tale about shared-format ambiguity between senders and receivers.

## Key Ideas
- ASN.1 BER is context-sensitive and handwritten parsers disagree subtly
- Subject Name parsing varies across OpenSSL, NSS, CryptoAPI — attacker exploits the gap
- MD2 preimage attack enables signature transfer to forged intermediate CA
- "Sender-receiver parsing disagreement" as a general attack pattern
- Postel's robustness principle considered harmful for security-critical parsing

## Connections
- [[Making Smart Contracts Smarter]]
- [[Agent Communication Languages]]

## Conceptual Contribution
- **Claim:** The global X.509 PKI is vulnerable not only because of weak hashes (MD2/MD5) but because layered, ambiguously-specified parsers (ASN.1 BER, PKCS#10, Subject Name handling) disagree about what a certificate says — an *inter-layer semantic gap* exploitable by attackers.
- **Mechanism:** Demonstrate concrete attacks: MD2RSA signature transfer from Verisign's root, Subject Name Confusion via implementation-dependent CN-selection policies, PKCS#10-tunneled SQL/ASN.1 injection, OID leading-zero/integer-overflow tricks, null-terminator CN spoofing, SSL Client Authentication EKU bypass, and EV hijacking via mixed-trust scripting.
- **Concepts introduced/used:** [[Parser Differential]], [[Parser Differentials]], [[X.509 PKI]], [[ASN.1 BER Ambiguity]], [[Certificate Authorities]], [[Protocol Layering Attacks]], [[Distributed Security]], [[LangSec]], [[Language-theoretic Security]], [[Postel's Robustness Principle]]
- **Stance:** empirical / security-critique
- **Relates to:** Canonical case study for [[Distributed Security]] and a prime example of why [[A Language-Based Approach To Prevent DDoS]]-style disciplined parsing matters. The ambiguity of ASN.1 BER mirrors the semantic-drift concerns in agent communication languages ([[A Common Ontology Of ACLs]], [[ACL Rethinking Principles]]) — when two parties disagree about message meaning, security or coordination fails.

## Tags
#security #pki #parsing #protocol-ambiguity
