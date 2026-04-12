# Review on Computational Trust and Reputation Models

**Reference:** Sabater, Sierra (2005). *Artificial Intelligence Review*. Source file: `Review_on_Computational_Trust_and_Reputation_Model.pdf`

## Summary
A panoramic review of computational trust and reputation models developed for multi-agent systems and electronic commerce. Sabater and Sierra classify models along several dimensions: conceptual basis (cognitive vs. game-theoretical), information sources (direct experience, witness information, sociological signals, prejudice), visibility (global vs. subjective), granularity (single- vs. multi-context), assumptions about cheating behavior, type of exchanged information, and provision of reliability measures.

The survey then applies this framework to representative models (Marsh's early trust model, Sporas, Histos, ReGreT, AFRAS, FIRE, eBay-style mechanisms, Yu & Singh's evidential model, etc.), identifying under-explored aspects: sociological information, multi-context reasoning, and principled handling of liars. It argues that as MAS applications grow more complex, trust models must become richer to accommodate social structures and contextual reasoning.

## Key Ideas
- Trust as cognitive belief vs. game-theoretic subjective probability.
- Direct experience, witness (word-of-mouth), sociological signals, prejudice.
- Global (online reputation) vs. subjective trust per partner.
- Three levels of cheating-resistance: ignored, biasing-only, liars.
- Need for multi-context, sociologically-aware trust.

## Connections
- [[Trust and Reputation]]
- [[Multi-Agent Systems]]
- [[Gossip Protocols]]
- [[Negotiation]]
- [[Agent Communication Languages]]

## Conceptual Contribution
- **Claim:** Computational trust/reputation must be classified along several independent dimensions (conceptual basis, information sources, visibility, granularity, cheating assumptions) if models are to be compared and composed rather than merely enumerated.
- **Mechanism:** The authors propose a multi-axis taxonomy and apply it to a dozen canonical models (Marsh, Sporas, Histos, ReGreT, AFRAS, FIRE, eBay-style aggregation, Yu & Singh), using each axis to surface gaps: sociological signals, multi-context trust, and principled liar handling are under-served despite being pivotal for realistic MAS.
- **Concepts introduced/used:** [[Trust]], [[Reputation]], [[Direct Experience]], [[Witness Reputation]], [[Sociological Reputation]], [[Prejudice]], [[ReGreT]], [[FIRE]], [[Cognitive Trust]], [[Game-Theoretic Trust]]
- **Stance:** survey
- **Relates to:** Supplies the conceptual vocabulary picked up by self-organisation work such as [[A Composite Self-organisation Mechanism in an Agent Network]] (DSmT trust fusion) and contextualises verifiability debates in [[Agent Communication Languages - Rethinking the Principles]]; links to [[Gossip Protocols]] through witness-information propagation.

## Tags
#trust #reputation #multi-agent #survey
