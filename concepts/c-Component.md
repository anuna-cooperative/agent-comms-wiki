# c-Component

In a semi-Markovian causal model (an [[Acyclic Directed Mixed Graph]]), a *confounded component* — a maximal set of vertices connected to one another by paths of bidirected (latent-confounder) edges. The joint distribution factorises into "c-factors" over the c-components, and this decomposition is the engine of the [[ID Algorithm]]: identification is solved component-by-component, and non-identifiability is localised to particular c-components (see [[Hedge (Causal Inference)]]).

## In this vault
- [[Identification of Joint Interventional Distributions - Shpitser Pearl]]
- [[Hedge (Causal Inference)]]
