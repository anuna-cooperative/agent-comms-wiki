## Distributed Consensus

The problem of getting a set of distributed processes to agree on a single value despite some of them failing or behaving adversarially. The negative bound is [[Impossibility of Distributed Consensus with One Faulty Process|FLP]]: in a fully asynchronous network with even one crash failure, no deterministic protocol can guarantee both safety and liveness. Practical algorithms ([[The Part-Time Parliament|Paxos]], [[Raft]], [[Practical Byzantine Fault Tolerance|PBFT]], [[HotStuff]]) circumvent FLP by making partial-synchrony or randomisation assumptions. Crash-fault tolerance requires `2f+1` nodes to tolerate `f` failures; Byzantine tolerance requires `3f+1`.

## In this vault
- [[Impossibility of Distributed Consensus with One Faulty Process]]
- [[The Part-Time Parliament]]
- [[In Search of an Understandable Consensus Algorithm]]
- [[Raft]]
- [[Practical Byzantine Fault Tolerance]]
- [[HotStuff]]
- [[Replicated State Machine]]
- [[Byzantine Fault Tolerance]]
- [[CAP Theorem]]
