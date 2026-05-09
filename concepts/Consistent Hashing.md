## Consistent Hashing

Karger et al.'s (1997) hashing scheme in which the addition or removal of a single bin causes only `1/n` of the keys to be remapped (vs the entire keyspace under naive modular hashing). The mechanism: hash both keys and bins onto a circular space; each key is assigned to the closest bin clockwise. Foundational for [[Chord]] and [[Distributed Hash Table|DHTs]] generally, and for production load balancers (HAProxy, Varnish, Memcached's ketama, Discord's gateway sharding).

## In this vault
- [[Chord]]
- [[Distributed Hash Table]]
- [[Kademlia]]
