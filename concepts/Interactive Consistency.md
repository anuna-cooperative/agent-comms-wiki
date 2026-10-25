# Interactive Consistency

A fault-tolerant agreement problem in which each of `n` processors begins with a private value and every nonfaulty processor must compute the same vector of `n` values. The vector's entry for each nonfaulty processor must equal that processor's actual input; entries for faulty processors may be arbitrary, but all nonfaulty processors must assign them identically.

Interactive consistency is stronger in shape than agreeing on one value: it first gives every correct participant a consistent view of all reported inputs, after which each can apply the same deterministic voting, averaging, or filtering function. [[Reaching Agreement in the Presence of Faults]] proves that with up to `m` arbitrary faults and no unforgeable authentication of relayed statements, it is solvable exactly when `n ≥ 3m+1`. With cryptographic authenticators that prevent a relay from altering another processor's statement, it is solvable for arbitrary `n ≥ m`.

## In this vault

- [[Reaching Agreement in the Presence of Faults]]
- [[Byzantine Agreement]]
- [[Byzantine Fault Tolerance]]
