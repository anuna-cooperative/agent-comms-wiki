# History Variable

A **history variable** is auxiliary state added to a specification to remember information about its past execution. It helps a [[Refinement|refinement]] proof relate the implementation's current state to an abstract state containing information the implementation has already discarded.

The added state must preserve the original behaviours when hidden: recording history cannot block an original transition or change an observable result. It is proof bookkeeping, not a requirement to store an extra log in the implementation.

## Example

Suppose an agent deletes completed requests from its work queue, while an abstract specification keeps the sequence of completed request IDs. The current queue alone cannot recover that sequence. In the proof, add a variable `completed`, initially empty, and append each request ID when its processing finishes. The refinement mapping can now use `completed` to construct the abstract record.

This example is illustrative. The history variable must track existing completion events; it cannot force a request to complete.

## Connections

- [[Prophecy Variable]] — auxiliary state representing future choices rather than past events.
- [[The Existence of Refinement Mappings]] — §5.1 defines history variables and proves preservation of observable behaviours. [Source PDF](https://lamport.azurewebsites.net/pubs/abadi-existence.pdf).
- [[Refinement]]
- [[Formal Verification]]

## Tags
#formal-methods #verification #refinement
