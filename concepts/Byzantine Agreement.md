## Byzantine Agreement

The classical problem (Pease, Shostak & Lamport 1980; Lamport, Shostak & Pease 1982 *Byzantine Generals Problem*): get `n` processes to agree on a value when up to `f` of them may be Byzantine (arbitrarily faulty, including coordinating malicious behaviour). The standard bound is `n ≥ 3f+1` for deterministic agreement with authenticated messages, `n ≥ 3f+1` is also necessary in the partially-synchronous model. Practical algorithms: [[PBFT]] (Castro & Liskov 1999), [[HotStuff]] (Yin et al. 2019), Tendermint, Honeybadger.

## In this vault
- [[Practical Byzantine Fault Tolerance]]
- [[PBFT]]
- [[HotStuff]]
- [[Byzantine Fault Tolerance]]
- [[Distributed Consensus]]
