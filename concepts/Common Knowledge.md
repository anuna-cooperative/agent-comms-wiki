# Common Knowledge

A fact φ is *common knowledge* in a group when everyone knows φ, everyone knows that everyone knows φ, and so on through every finite depth (`C_G φ`). It implies “everyone knows” and [[Distributed Knowledge]].

[[Knowledge and Common Knowledge in a Distributed Environment]] shows that common knowledge is necessary for coordinated simultaneous attack under its specification. Under its non-guaranteed-communication assumptions, message exchange cannot establish common knowledge absent in the corresponding no-message run. This does not rule out initially shared knowledge or facts made common knowledge by an ideal shared clock. The paper studies bounded-time, eventual, and timestamped alternatives for weaker coordination requirements.

Formally, `C_G φ` holds when `E_G^k φ` holds for every finite `k ≥ 1`. Equivalently it is the [[Greatest Fixed Point]] of `X = E_G(φ ∧ X)`. See [[Everyone Knows]] and [[Higher-Order Knowledge]] for the intermediate levels, and [[Epsilon-Common Knowledge]], [[Eventual Common Knowledge]], and [[Timestamped Common Knowledge]] for temporal variants.

## In this vault
- [[Knowledge and Common Knowledge in a Distributed Environment]]
- [[Reasoning About Knowledge]]
- [[Epistemic Logic]]
- [[Distributed Knowledge]]
- [[Muddy Children Puzzle]]
