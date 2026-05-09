## View Change

The recovery sub-protocol of [[PBFT]] and successor BFT protocols by which a stuck or faulty primary is replaced. Backups that have not made progress within a timeout broadcast `view-change` messages containing certificates of their prepared / committed entries; the next primary (round-robin) collects `2f+1` view-change messages, computes the longest committed prefix, and starts the next view with a `new-view` message. View change is the most subtle part of any BFT protocol; many bugs in deployed BFT systems are localised to view-change edge cases. [[HotStuff]] simplifies view change to a single message round (one of its principal contributions over PBFT).

## In this vault
- [[Practical Byzantine Fault Tolerance]]
- [[PBFT]]
- [[HotStuff]]
