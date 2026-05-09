## CCI Model

Sun, Jia et al.'s (1998) correctness model for [[Operational Transformation]]: a real-time collaborative-editing system must achieve **Convergence** (all replicas converge to the same state given the same operations in any order), **Causality preservation** (operations causally related execute in causal order at every replica), and **Intention preservation** (each operation produces its user's intended effect even amidst concurrent operations). Intention preservation is the property that distinguishes OT from earlier serialisation-based approaches and is what makes the [[Transformation Function|transformation function]] necessary.

## In this vault
- [[Concurrency Control in Groupware Systems]]
- [[Operational Transformation]]
- [[Transformation Function]]
