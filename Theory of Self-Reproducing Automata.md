# Theory of Self-Reproducing Automata (Fourth Lecture: The Role of High and of Extremely High Complication)

**Reference:** von Neumann, J. (edited and completed by Arthur W. Burks) (1966). *University of Illinois Press*. Source file: `VonNeumann.pdf`

## Summary
This excerpt is the Fourth Lecture of von Neumann's posthumously edited *Theory of Self-Reproducing Automata*. Von Neumann compares natural automata (nervous systems) with artificial computing machines across size, speed, energy dissipation per elementary act of information, and error characteristics. He observes that although vacuum tubes are vastly larger and less energy-efficient than neurons, both are far above the thermodynamic minimum — suggesting physics does not fully explain the size gap; reliability likely does.

The core argument concerns complication: below a threshold, a system cannot perform certain tasks at all; above it, qualitatively new behaviors (including self-reproduction and evolution) become possible. Natural automata tolerate errors locally rather than halting on any single fault, an architectural stance he contrasts with the "single-error" fragility of contemporary computers. The discussion foreshadows modern views on redundancy, fault tolerance, and emergent capabilities with scale.

## Key Ideas
- Complication threshold enables qualitatively new behavior.
- Natural automata survive local errors; artificial automata halt.
- Analog-digital mixture characterizes biological computation.
- Size and reliability trade-offs shape architecture.
- Precursor to self-reproducing and evolvable systems theory.

## Connections
- [[Self-Adaptive Systems]]
- [[Multi-Agent Systems]]
- [[Edge Intelligence]]

## Conceptual Contribution
- **Claim:** There exists a threshold of "complication" below which automata can only degrade and above which qualitatively new capacities (self-reproduction, evolvable organisation) become possible; biological automata survive precisely because their architecture tolerates local error rather than halting on any single fault.
- **Mechanism:** Von Neumann juxtaposes nervous systems and vacuum-tube computers along size, energy-per-information-act, speed, and error characteristics, noting both far exceed thermodynamic minima so the gap must be architectural. He then argues that digital-analog hybrids with distributed redundancy exhibit error-tolerant behaviour that Turing-style halting-on-first-error machines cannot match, and frames this as a prerequisite for crossing the complication threshold that enables open-ended evolution.
- **Concepts introduced/used:** [[Complication Threshold]], [[Self-Reproducing Automata]], [[Fault Tolerance]], [[Redundancy]], [[Digital-Analog Hybrid]], [[Error Halting]], [[Natural vs Artificial Automata]]
- **Stance:** foundational
- **Relates to:** A philosophical wellspring for the "let it crash" supervision of [[Programming Erlang Second Edition]], the fault-tolerance patterns of [[Architectural Patterns for Dependable Software Systems - SOL]], the robustness concerns of [[Are Multiagent Systems Resilient to Communication Failures]], and the emergent-complexity framing behind [[Computational Boundary of a Self]].

## Tags
#automata #complexity #fault-tolerance #foundational
