# Majority Vote

A standard fault-tolerance pattern in which multiple redundant replicas compute the same result and a voter outputs the plurality value, masking up to a minority of faulty replicas. The primitive is rigorously analysed in [[Probabilistic Logics and the Synthesis of Reliable Organisms from Unreliable Components|von Neumann's 1952 lectures]] as the "majority organ", with the error recurrence η* = ε + (1−2ε)(3η² − 2η³) showing a sharp ε < 1/6 phase boundary for recoverable computation. Formalised as a reusable SOL module in the SINS dependability framework.

## In this vault
- [[Probabilistic Logics and the Synthesis of Reliable Organisms from Unreliable Components]] — formal origin
- [[Architectural Patterns for Dependable Software Systems - SOL]]
- [[Byzantine Fault Tolerance]]
- [[Practical Byzantine Fault Tolerance]]
