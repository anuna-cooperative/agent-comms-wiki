# Knowledge Level

Newell: a level of system description above the symbol level, in which behaviour is explained by what the system *knows* and *wants* (principle of rationality) — the theoretical home of agent theory.

## In this vault
- [[The Knowledge Level]]
- [[Symbol Level]]
- [[Principle of Rationality]]
- [[BDI]]

## Knowledge-representation lineage

```mermaid
graph TD
  MC1["McCarthy (1959)<br/>Programs with Common Sense"] --> AT[Advice Taker]
  AT --> MC2["McCarthy (1969)<br/>Epistemological Problems of AI"]
  MIN1["Minsky (1974)<br/>A Framework for Representing Knowledge"] --> FR[Frames]
  MC2 --> CIRC["McCarthy (1980)<br/>Circumscription"]
  CIRC --> NM[Nonmonotonic reasoning]
  FR --> SoM["Minsky (1986)<br/>Society of Mind"]
  NEW["Newell (1982)<br/>The Knowledge Level"] --> KL((Knowledge Level))
  MC2 --> KL
  KL --> BDI[[BDI]]
  KL --> INT["Dennett<br/>Intentional Stance"]
  BRO["Brooks (1991)<br/>Intelligence Without Representation"] -.critique.-> KL
  CC["Clark & Chalmers (1998)<br/>The Extended Mind"] --> SoM
  SoM --> AGT[[Agent Architecture]]
  BDI --> AGT
```

Papers: [[Programs with Common Sense]] · [[A Framework for Representing Knowledge]] · [[Circumscription - A Form of Nonmonotonic Reasoning]] · [[The Knowledge Level]] · [[The Society of Mind]] · [[Intelligence Without Representation]] · [[The Extended Mind]] · [[Epistemological Problems of Artificial Intelligence]]
