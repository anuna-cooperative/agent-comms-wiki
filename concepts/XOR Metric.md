## XOR Metric

The distance function `d(x, y) = x ⊕ y` (interpreted as an unsigned integer) on `k`-bit identifiers, used as the routing distance in [[Kademlia]]. Symmetric (`d(x,y) = d(y,x)`), satisfies the triangle inequality, and uniquely **unidirectional**: for any point `x` and any distance `d`, there is exactly one point `y` at distance `d` from `x`. This unidirectionality eliminates the asymmetry of [[Chord]]'s clockwise routing and is what makes Kademlia's routing tables symmetric (nodes that route through us also know us).

## In this vault
- [[Kademlia]]
- [[k-Buckets]]
- [[Distributed Hash Table]]
