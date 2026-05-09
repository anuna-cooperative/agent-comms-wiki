## Quorum Certificate

In modern BFT consensus protocols (notably [[HotStuff]]), an aggregated [[Threshold Signature]] over `2f+1` votes for a particular block in a particular view. A QC is a constant-size proof that a quorum has voted, replacing the linear-size collection of individual votes used in earlier protocols like [[PBFT]]. Chains of QCs (parent-pointers) realise the three-chain commit structure of HotStuff and the safety arguments of its successors (Bullshark, Mysticeti).

## In this vault
- [[HotStuff]]
- [[Threshold Signature]]
- [[PBFT]]
