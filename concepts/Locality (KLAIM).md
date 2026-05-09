## Locality (KLAIM)

In [[KLAIM]], a *locality* is a named site where tuples reside and operations execute; the four Linda primitives carry a locality argument (`out(t)@l` etc.). An *allocation environment* maps logical locality names (used by agents) to physical sites (used by the runtime). Mobile agents migrate by `eval(P)@l`. Localities make administrative-domain structure first-class and are the units the μKLAIM type system constrains for access control.

## In this vault
- [[KLAIM]]
- [[Distributed Tuple Spaces]]
- [[Mobility]]
