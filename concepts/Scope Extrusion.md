## Scope Extrusion

The structural rewrite of the [[Pi-Calculus]] under which a restricted (private) name escapes its original scope when communicated to a process outside that scope. Formally: `(νx)(P | Q) ≡ (νx)P | Q` when `x ∉ fv(Q)`, combined with the communication of `x` from `P` into `Q` extends the binder to cover both. This is the formal mechanism of [[Mobility]] in π — the *only* rewrite needed to capture all of dynamic-topology concurrent computation.

## In this vault
- [[A Calculus of Mobile Processes]]
- [[Pi-Calculus]]
- [[Mobility]]
- [[Name-Passing]]
