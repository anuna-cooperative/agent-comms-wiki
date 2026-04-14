# The Synthesis of Digital Machines with Provable Epistemic Properties

**Reference:** Rosenschein, S.J. & Kaelbling, L.P. (1986). *Theoretical Aspects of Reasoning about Knowledge: Proceedings of the 1986 Conference* (J.Y. Halpern, ed.), Morgan Kaufmann, pp. 83–98. Source file: `rosenschein-kaelbling-synthesis-digital-machines.pdf`. [URL](http://www.tark.org/proceedings/tark_mar19_86/p83-rosenschein.pdf)

## Summary
Rosenschein and Kaelbling introduce the *situated-automata* approach to knowledge: rather than treating `K(x, phi)` as "machine x stores a syntactic representation of phi in its knowledge base", they define it in terms of a correlation between the state of the machine and the state of its environment. A machine "knows" phi iff phi holds in every environment-state consistent with the machine's internal state. Under this definition the S5 axioms of epistemic logic fall out as theorems about well-designed embedded systems — without any symbolic storage of formulas.

The paper extends earlier situated-automata work to compositional hardware: synchronous digital machines are analysed by treating their gates and delay elements as agents in a multi-agent system and reasoning about information flow among them. The authors introduce *Rex*, a language for recursively computing machine descriptions that lets designers build machines with provable epistemic properties from the gate level up. This is the technical foundation for "knowledge as situatedness" that underpins reactive agent architectures.

## Key Ideas
- *Situated-automata* semantics: knowledge = correlation between machine state and environment state, not syntactic storage.
- S5 axioms (truth, consequential closure, positive and negative introspection) provable for embedded systems under this definition.
- Compositional reasoning: gates and delays modelled as agents; knowledge of the whole follows from information flow among components.
- *Rex*: a hierarchical specification language that compiles to digital machines with guaranteed epistemic properties.
- Provides a bridge between epistemic logic, control theory, and reactive robotics.

## Connections
- [[Agent-Oriented Programming]]
- [[Knowledge-Level Specification]]
- [[Reactive vs Deliberative Agents]]
- [[Subsumption Architecture]]
- [[BDI Logic]]
- [[Grounded Semantics]]
- [[Mental State]]
- [[Epistemic Logic]]
- [[Symbolic Plans]]

## Conceptual Contribution
- **Claim:** Knowledge in an embedded agent can be defined by state-environment correlation, so epistemic properties can be *compiled into* hardware rather than reasoned about at runtime.
- **Mechanism:** Possible-worlds semantics where a machine's internal state partitions environment states; Rex language synthesises circuits whose state partitions provably realise specified knowledge predicates.
- **Concepts introduced/used:** [[Situated Automata]], [[Correlational Knowledge]], [[Rex Language]], [[Epistemic S5]], [[Embedded Agent]].
- **Stance:** foundational/formal; engineering-oriented counterpoint to symbolic AI.
- **Relates to:** Shoham's [[Agent-Oriented Programming]] cites this work as a key alternative route to agenthood: where AOP implements mental state as explicit data structures interpreted at runtime, Rosenschein & Kaelbling show mental state can be compiled away while preserving the same logical semantics. Shoham's discussion of "natural vs artificial automata" and of [[Reactive vs Deliberative Agents]] directly engages with this programme.

## Tags
#situated-automata #epistemic-logic #reactive-agents #foundational #compilation #knowledge
