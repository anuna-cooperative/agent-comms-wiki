# Languages and Language

**Reference:** Lewis, D. K. (1975). *Languages and Language.* In K. Gunderson (ed.), *Language, Mind, and Knowledge* (Minnesota Studies in the Philosophy of Science, vol. 7, pp. 3–35). University of Minnesota Press. Reprinted in *Philosophical Papers Volume I* (Oxford UP 1983). [URL (Minnesota Digital Conservancy)](https://conservancy.umn.edu/bitstream/handle/11299/185227/7-01_Lewis.pdf)

## Summary
"Languages and Language" is Lewis's mature statement of the distinction between **a language** (an abstract function from sound-and-sign types to meanings, with no users) and **language** (a social phenomenon: a population's practice of using a particular abstract language to communicate). The paper sharpens the framework introduced in [[Convention - Lewis|*Convention* (1969)]] and rebuts an objection from Strawson and Searle that an account of language as *convention* — solving a coordination problem by mutual expectation — misses the *normative* heart of meaning. Lewis answers: it does not. A population *uses* an abstract language `L` iff there prevails in that population a *convention of truthfulness and trust in `L`* — a regularity by which speakers utter sentences of `L` only when they believe them true-in-`L`, and hearers respond by coming to believe the sentences uttered are true-in-`L`. The regularity is a convention in the technical Lewis 1969 sense: it solves a coordination problem (mutual intelligibility), it is sustained by mutual expectation (common knowledge that it is so sustained), and it has alternatives (some other abstract language could have played the same role).

The paper's value over *Convention* is its precise account of the *language–language* relation. The abstract object `L` is a function from finite strings to truth-conditions (or, for non-declarative moods, to satisfaction-conditions). The social object — *language* — is the *convention of truthfulness and trust* in `L`. Different populations use different `L`s; the same population can use several `L`s for different domains. Meaning is *not* primarily a property of individual speakers' minds: it is a property of the convention, fixed once we identify which `L` the population's convention picks out. Speakers' beliefs and intentions enter only via the convention-sustaining clauses (each speaker expects the others to be truthful-in-`L` and tries to be so themselves), not as the bearers of meaning.

For agent communication, "Languages and Language" is the cleanest philosophical statement of the *public-semantics* programme avant la lettre. The meaning of a wire-format performative is not the BDI state of the sender or receiver; it is the truth- or satisfaction-conditions assigned by *the abstract language the protocol convention picks out*. Two agents using FIPA-ACL are participating in a convention of truthfulness and trust in the abstract language defined by FIPA-ACL's semantics. The convention requires only that agents *act as if* truthful-in-`L`; it does not require introspective access. This is exactly the dialect-and-protocol picture that [[ACL Rethinking Principles|Singh 1998]] argues for, that [[Commitment Machines - Yolum and Singh|commitment machines]] formalise, and that [[CBCL - Safe Self-Extending Agent Communication|CBCL]] turns into a verified, self-extending wire format. Lewis 1975 is also the philosophical complement to [[Convention - Lewis|*Convention*]]: where the 1969 book establishes the game-theoretic apparatus, the 1975 paper applies it to language and shows how to answer the standard objections from the speech-act tradition.

## Key Ideas
- *Two senses of "language"*: an abstract *language `L`* is a function from sentence-types to meanings (truth- and satisfaction-conditions); *language* (no article) is the social phenomenon — a population's *use* of some `L`. Confusing the two is the source of much philosophy of language.
- *Convention of truthfulness and trust*: a population uses `L` iff it has a convention (in the 1969 sense) of *truthfulness in `L`* (utter sentences only when believed true-in-`L`) and *trust in `L`* (hearers respond to such utterances by coming to believe the sentences true-in-`L`).
- *Meaning is a property of the convention, not the speaker*: the convention picks out which `L` is in force; the meaning of a sentence in that population's language is its meaning in `L`. Individual speaker mental states enter only as the conformity conditions of the convention.
- *Coordination problems and alternative languages*: many abstract `L`s could solve the population's coordination problem; salience, precedent, and history pick one. Meaning is *not arbitrary in function* but *contingent in particulars*.
- *Reply to Strawson/Searle*: the objection that convention-based accounts cannot capture the *normative* dimension of meaning is misplaced — the convention is *itself* a normative structure (it requires mutual expectation and conformity to be in force).
- *Multiple languages, one population*: a population may use several `L`s simultaneously — formal and informal registers, technical sub-languages, jargon — each sustained by its own convention.
- *Sentence moods and non-declaratives*: imperatives and interrogatives are handled by extending the abstract `L` to assign satisfaction- and answerhood-conditions; the convention-of-truthfulness-and-trust generalises to a convention of *acting as if* the satisfaction-conditions held.

## Connections
- [[Convention - Lewis]]
- [[Convention (Lewis)]]
- [[Common Knowledge (Convention)]]
- [[Coordination Game]]
- [[Focal Point]]
- [[Common Ground]]
- [[Assertion - Stalnaker]]
- [[Logic and Conversation]]
- [[How to Do Things with Words]]
- [[Speech Acts - An Essay in the Philosophy of Language]]
- [[Speech Act Theory]]
- [[Philosophical Investigations - Wittgenstein]]
- [[Articulating Reasons - Brandom]]
- [[Making It Explicit - Brandom]]
- [[Public Semantics]]
- [[Mentalistic Semantics]]
- [[Commitment-based Semantics]]
- [[Inferentialism]]
- [[Truthfulness and Trust]]
- [[Convention of Truthfulness]]
- [[Language Games for Autonomous Robots]]
- [[ACL Rethinking Principles]]
- [[Commitment Machines - Yolum and Singh]]
- [[A Commitment-Based Approach to Agent Communication]]
- [[CBCL - Safe Self-Extending Agent Communication]]
- [[Common Business Communication Language]]

## Conceptual Contribution
- **Claim:** Sharpen the *Convention 1969* picture into a precise account of how an abstract language `L` (a function from sentences to truth-/satisfaction-conditions) gets *in force* in a population: by a *convention of truthfulness and trust* in `L`. Meaning is a property of the convention, not of individual speakers' mental states.
- **Mechanism:** Define abstract languages as functions from sentence-types to truth- and satisfaction-conditions. Define *use* of `L` by population `P` as the prevalence in `P` of a convention (in the Lewis 1969 sense) of being *truthful in `L`* and *trusting in `L`*. Show how this answers Strawson's and Searle's normativity objection (the convention is itself normative) and how it generalises to non-declarative moods (satisfaction-conditions) and to populations using multiple `L`s.
- **Concepts introduced/used:** [[Abstract Language]], [[Convention of Truthfulness]], [[Convention of Trust]], [[Truthfulness and Trust]], [[Sentence Mood]], [[Pragmatic Presupposition]], [[Public Semantics]].
- **Stance:** foundational philosophical paper.
- **Relates to:** Direct sequel to [[Convention - Lewis|Lewis 1969 (*Convention*)]] — the 1969 book gives the game-theoretic foundations, the 1975 paper applies them to language. Operational complement to [[Assertion - Stalnaker|Stalnaker 1978]]: where Stalnaker gives the update mechanics of assertion, Lewis 1975 says what makes a particular abstract language the one the participants are updating *in*. For agent communication, this is the cleanest philosophical statement of the *public-semantics* programme: the meaning of an ACL performative is fixed by the protocol convention's chosen `L`, not by speakers' BDI states — exactly the picture [[ACL Rethinking Principles|Singh 1998]] argues for, [[Commitment Machines - Yolum and Singh|commitment machines]] formalise, and [[CBCL - Safe Self-Extending Agent Communication|CBCL]] turns into a verified wire format. The view also locates [[Wittgenstein|Wittgensteinian]] meaning-as-use within an explicit game-theoretic setting (Lewis's convention is the formal regulariser of Wittgenstein's language-games), and is compatible with [[Inferentialism|Brandomian inferentialism]] as a downstream layer (inferential articulation is what gives `L` its truth-conditions in the first place).

## Tags
#lewis #languages-and-language #convention #public-semantics #philosophy-of-language #foundations #truthfulness-and-trust #conventional-semantics
