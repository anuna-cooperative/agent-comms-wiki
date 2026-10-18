# Prophecy Variable

A **prophecy variable** is auxiliary state used in a proof to represent a choice whose outcome is determined later in an execution. It helps a [[Refinement|refinement]] mapping when an abstract specification makes a decision earlier than the implementation does.

The value is a nondeterministic guess constrained to agree with the later outcome. Soundness requires that hiding the auxiliary state preserves the original behaviours: every original behaviour must still have a compatible augmentation. This is a mathematical proof device, not a runtime predictor.

## Example

Suppose a worker will return either `accept` or `reject`. The abstract protocol records the outcome when a request starts, but the implementation decides only when processing finishes. Add a prophecy value `outcome` at the start; when the response occurs, require it to match that value. Each original execution retains a matching guess, allowing the proof to relate the earlier abstract decision to the later concrete one.

This example assumes a response occurs. If the implementation also permits executions that never respond, the augmentation must preserve them too; a prophecy cannot silently assume termination.

## Connections

- [[History Variable]] — remembers past events rather than representing future choices.
- [[The Existence of Refinement Mappings]] — §§5.2–5.3 define prophecy variables and their soundness conditions. [Source PDF](https://lamport.azurewebsites.net/pubs/abadi-existence.pdf).
- [[Refinement]]
- [[Formal Verification]]

## Tags
#formal-methods #verification #refinement
