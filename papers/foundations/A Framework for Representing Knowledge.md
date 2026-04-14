# A Framework for Representing Knowledge

## Reference
- Minsky, Marvin (1974). "A Framework for Representing Knowledge." MIT-AI Laboratory Memo 306, June 1974. Reprinted in P. Winston (Ed.), *The Psychology of Computer Vision*, McGraw-Hill 1975; shorter versions in Haugeland (ed.) *Mind Design*, MIT Press 1981, and in Collins & Smith (eds.) *Cognitive Science*, Morgan-Kaufmann 1992.
- PDF: [courses.media.mit.edu/2004spring/mas966/Minsky%201974%20Framework%20for%20knowledge.pdf](https://courses.media.mit.edu/2004spring/mas966/Minsky%201974%20Framework%20for%20knowledge.pdf)
- MIT DSpace: [dspace.mit.edu/handle/1721.1/6089](https://dspace.mit.edu/handle/1721.1/6089)
- Local: `minsky1974_frames.pdf`

## Summary
Minsky argues that the "chunks" of reasoning, language, memory, and perception must be larger and more structured than the fine-grained representations (logical predicates, production rules, semantic nets of atoms) favored by then-contemporary AI and psychology. He proposes the *frame* as a data structure for representing a stereotyped situation — being in a certain kind of living room, attending a birthday party, viewing a cube from an angle. A frame has fixed top-level facts about the situation plus *terminals* (slots) that must be filled by specific instances meeting marker conditions; slots carry *default assignments* that are easily displaced by better-fitting data.

Frames are grouped into *frame-systems* whose members share terminals and whose transformations represent actions, cause-effect relations, or shifts of viewpoint (e.g., walking around a room: different visual frames share identity of the objects seen). Frame-systems are linked by an information-retrieval network that proposes replacement frames when matching fails. The theory covers visual scene analysis, linguistic understanding (discourse and story frames), memory and analogy, and default/non-monotonic reasoning — all as instances of selecting a frame, matching it against the situation, and repairing the match when surprises occur.

The apology in the paper is explicit: Minsky proposes representations without fully specifying the processes that use them, and he admits the basic frame idea is in the Bartlett "schema" / Kuhn "paradigm" tradition. The novelty is the frame-*system* and the integration of defaults, expectations, markers, and a retrieval network into a single architecture for common-sense thought. The paper closes Part 1 with vision and imagery; later parts address language, memory, control, and an appendix arguing that traditional logic is unsuited to realistic approximations.

## Key Ideas
- **Frame**: structured data-stereotype for a recurring situation, with fixed top-level and slotted terminals.
- **Terminal markers**: constraints (person / object of sufficient value / sub-frame of a kind) on what may fill a slot.
- **Default assignments**: terminals normally pre-filled, easily displaced; supports reasoning by example and non-monotonic inference.
- **Frame-systems and shared terminals**: different frames of the same system describe a scene from different viewpoints; transformations among frames model action, perspective, causation.
- **Matching and replacement**: an information-retrieval network offers alternative frames when the current frame fails; surprises drive learning.
- **Top-down expectation over bottom-up data**: perception and language understanding are guided by expectations from proposed frames.
- **Against purely logical representation**: common sense needs approximation and default reasoning, not quantified certainty.

## Connections
- [[Frames (AI)]] — this is the founding document.
- [[The Society of Mind]] — Minsky's later book generalizes the many-small-structures intuition; frames become agents.
- [[Trans-Frames]] — later Minsky concept building on frame-system transformations for actions and causes.
- [[Knowledge Representation]] — frames are one of the big three paradigms alongside logic and semantic nets.
- [[Ontologies]], [[Handbook On Ontologies]] — class/slot/default structure of frames is ancestral to object-oriented ontology languages (KL-ONE, F-Logic, OWL classes).
- [[Ontolingua Portable Ontology Specifications]], [[Toward Principles for the Design of Ontologies Used for Knowledge Sharing]] — frame-style slot-and-filler vocabulary.
- [[A Common Ontology Of ACLs]] — shared terminals are conceptually parallel to shared performative slots.
- [[Semantic Web]] — RDF/OWL frame-like class modelling traces to this paper.
- Contrast with [[Intelligence Without Representation]] — Brooks's opposite pole on whether structured representations are even needed.
- [[Abnormality Predicate]] — default reasoning formalized later by McCarthy.

## Conceptual Contribution
> Minsky replaces atomistic, logic-style representation with *pre-packaged chunks of expectation*. The conceptual shift — that understanding a novel situation is recognizing it as a variant of a stored stereotype, filling defaults, and repairing mismatches — gave AI and cognitive science a single scaffolding for perception, language, analogy, memory, and common sense. Every subsequent representational technology that lets you say "a Meeting has an organizer, a list of attendees (default: empty), a location (default: office), and when attendees don't match, try the Teleconference frame" is walking in Minsky's footprints. For agent communication, frames underwrite the assumption that speech-act types have slots with expected fillers and defaults, which is exactly the structure KQML and FIPA-ACL messages inherit.

## Tags
#knowledge-representation #frames #Minsky #common-sense #default-reasoning #schema #foundational #cognitive-architecture
