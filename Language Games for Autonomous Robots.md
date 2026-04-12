# Language Games for Autonomous Robots

**Reference:** Steels, L. (2001). *IEEE Intelligent Systems, Sept/Oct 2001*. Source file: `steels01languageGames.pdf`

## Summary
Steels presents language games as a paradigm for creating grounded, open-ended dialogue between autonomous robots and humans. A language game is a scripted verbal interaction situated in a shared environment that simultaneously exercises perception, conceptualization, verbalization, interpretation, and action. By playing repeated games, agents integrate disparate AI components (vision, speech, planning, learning) into a coherent whole and bootstrap shared vocabulary and meaning without a central designer.

The paper details the guessing game as a canonical example: a speaker picks a topic, conceptualizes a distinguishing feature, verbalizes it, and the listener tries to identify the referent — feedback updates their lexicons' association scores. Experiments on Sony AIBO and the "Talking Heads" setup show how robots acquire words like color and spatial terms through embodied interaction. Language games thus provide a framework for studying the emergence of grounded communication conventions.

## Key Ideas
- Language games integrate perception, conceptualization, and action.
- Guessing game as a minimal grounded-dialogue protocol.
- Shared context + feedback drives lexicon convergence.
- Talking Heads experiment: lexicons emerge via population interaction.
- Language games tackle integration and grounding jointly.

## Connections
- [[Language Workbenches]]
- [[Language Games]]
- [[Conceptualization]]
- [[Emergent Communication]]
- [[Multi-Agent Systems]]
- [[Agent Communication Languages]]
- [[Speech Act Theory]]

## Conceptual Contribution
- **Claim:** Grounded, open-ended communication in robots can emerge from repeated situated "language games" that co-exercise perception, conceptualisation, verbalisation and action — with no central designer of the lexicon.
- **Mechanism:** Steels formalises the guessing-game protocol: speaker selects a topic in shared scene, computes a distinguishing category, encodes it as a word; listener decodes, points, and success/failure feeds back to associative lexicon scores. Embodied populations of Sony AIBOs and the Talking Heads platform empirically show lexicon convergence over colour, spatial and proper-name vocabularies, demonstrating that integration of AI sub-systems and semantic grounding are solved jointly rather than separately.
- **Concepts introduced/used:** [[Language Game]], [[Guessing Game]], [[Grounding]], [[Lexicon Convergence]], [[Talking Heads Experiment]], [[Semiotic Cycle]], [[Emergent Communication]]
- **Stance:** empirical
- **Relates to:** Provides an embodied-situated counterpart to the decision-theoretic language emergence of [[Towards Automating the Evolution of Linguistic Competence]] and the neural-MARL emergence of [[Emergence of Grounded Compositional Language in Multi-Agent Populations]]; its feedback-driven convergence contrasts with the top-down protocol stipulation of [[FIPA-ACL]].

## Tags
#language-games #grounding #robots #emergent-language
