# Agent Architecture

The internal computational organisation of an agent — deliberative (BDI), reactive (subsumption), layered, or hybrid — along with the control loop and data pipelines that realise it.

## In this vault
- [[The BOID Architecture]]
- [[Intelligent Agents Theory and Practice]]
- [[Agent-Oriented Programming]]

## Architectural lineage

```mermaid
graph TD
  MC["McCarthy (1979)<br/>Ascribing Mental Qualities to Machines"] --> IS["Dennett<br/>Intentional Stance<br/>True Believers"]
  HEW["Hewitt (1973)<br/>Universal Modular Actor Formalism"] --> ACTOR[Actor Model]
  ACTOR --> CONC[Concurrent agents]
  BRAT["Bratman (1987)<br/>Intention Plans Practical Reason"] --> BDI[[BDI]]
  RG["Rao & Georgeff<br/>BDI Logic"] --> BDI
  MIN["Minsky<br/>Society of Mind"] --> SOC[Societies of sub-agents]
  BRO["Brooks (1991)<br/>Intelligence Without Representation"] --> SUB[Subsumption]
  SUB --> REACT[Reactive / behaviour-based]
  IS --> SHO["Shoham (1993)<br/>AGENT-0 · Agent-Oriented Programming"]
  BDI --> SHO
  SHO --> AA((Agent Architecture))
  REACT --> AA
  SOC --> AA
  CONC --> AA
  AA --> HYB[Hybrid / layered]
```

Papers: [[A Universal Modular Actor Formalism for Artificial Intelligence]] · [[Ascribing Mental Qualities to Machines]] · [[Intelligence Without Representation]] · [[The Society of Mind]] · [[True Believers - The Intentional Strategy and Why It Works]] · [[AGENT-0]]
