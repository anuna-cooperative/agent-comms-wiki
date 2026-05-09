# hence

A defeasible-logic meta-control planner for coordinating multi-agent LLM task workflows, authored by Hugo O'Connor. `hence` lets an orchestrator describe a plan as a set of tasks with dependencies, defeasible rules, and queryable progress state; LLM agents pick up unblocked work, report results, and the planner re-derives what's next. Used in the development workflow behind [[CBCL - Safe Self-Extending Agent Communication]] (the codebase's `.hence/` directory holds architecture decision records and purity-boundary maps) and disclosed as the agent-orchestration layer in that paper's AI-disclosure section.

## In this vault
- [[CBCL - Safe Self-Extending Agent Communication]]
