# The Confused Deputy (or why capabilities might have been invented)

## Reference

Hardy, Norm. "The Confused Deputy (or why capabilities might have been invented)." *ACM SIGOPS Operating Systems Review*, 22(4):36-38, October 1988. [URL](https://web.cs.wpi.edu/~cs557/f14/papers/confused_deputy-hardy.pdf)

## Summary

Norm Hardy's three-page note is the single most quoted security story in the capability tradition. It is a "nearly true" anecdote from roughly 1974 at Tymshare. A FORTRAN compiler, stored in directory `SYSX`, writes statistics to `(SYSX)STAT` and is therefore granted *home files license* - the ambient authority to write any file in `SYSX`. Users invoke the compiler as `RUN (SYSX)FORT` and may supply the name of a file in their own directory for optional debugging output. One day, a user passes `(SYSX)BILL` - the system billing file - as the output filename. The compiler, running with its `SYSX` authority, dutifully opens `(SYSX)BILL` for write and clobbers it. The billing data is lost.

Hardy walks through the standard reactions (blame the compiler, add a check for sensitive filenames, recategorise files, enumerate forbidden names) and shows that each misses the point. The compiler has been delegated authority it did not ask for and cannot distinguish: it cannot tell whether a request to write `(SYSX)BILL` comes from its own invariant need to write `STAT` (authority inherent to the compiler) or from the invoker's request channel (authority inherent to the invoker). The compiler is acting as *deputy* for two different principals - itself and its invoker - with two different authorities, but the operating system gives it only one aggregated authority set with no way to trace which request justified which use.

The capability fix, Hardy explains, is to *pass* each authority as a capability at the point of need rather than to aggregate them ambiently on the compiler process. The invoker passes a capability to the output file; the compiler holds a separate capability to the statistics file; no ASCII pathname walk ever happens against an ambient authority. The Tymshare/KeyKOS team built KeyKOS on precisely this discipline. Hardy's essay is the canonical demonstration of why ACL-plus-pathname operating systems have a structural bug (the confused deputy) that capability operating systems avoid by construction.

## Key Ideas

- **Confused deputy**: an authorised program manipulated by a less-authorised invoker into wielding its own greater authority on the invoker's behalf.
- **Ambient authority** is the underlying cause: the compiler's `SYSX` home-files-license is in effect whenever the compiler runs, independent of which request is in flight.
- **Two principals, one process**: the compiler serves its own goals *and* the invoker's, with distinct authorities that the OS conflates.
- **Designation vs. authority**: a filename in ACL systems is a pure designator; authority comes from who-is-running. In capability systems the capability *is* the designator-with-authority - no conflation possible.
- **Capabilities as the fix**: present-tense authority via capability arguments eliminates the confusion.
- **KeyKOS** is offered as the system built on precisely this discipline, with factories defeating Trojan horses and confined subsystems.

## Connections

- [[The Heart of Spritely - Distributed Objects and Capability Security]]
- [[Confused Deputy]] - this note is Hardy's original paper; [[Confused Deputy]] is the concept page.
- [[Capability Security]] - Hardy's "why capabilities might have been invented" is the operational motivation of the whole tradition.
- [[Object Capability Security]] - object-capabilities inherit the fix directly.
- [[E Language]] - E's reference-passing discipline is an anti-confused-deputy design.
- [[CapTP]]
- [[Ambient Authority]] - Hardy is the source of the critique; ambient authority IS the bug.
- [[Principle of Least Authority]] - the confused deputy appears when a process has more authority than the request demands.
- [[Distributed Security]]
- [[Security Kernel Lambda Calculus]]
- [[Capability Bounding]]

## Conceptual Contribution

> When an authorised program must act on behalf of a less-authorised invoker, any operating system that binds authority to the *running process* (rather than to the *request*) creates a structural confusion: the program cannot distinguish authority it holds for its own purposes from authority it is borrowing on behalf of its caller. Capability systems remove the confusion by making authority travel with the request as an argument, not with the process as an ambient attribute.

## Tags

#capability-security #confused-deputy #ambient-authority #origins #keykos #tymshare #1988 #sigops #norm-hardy #foundational #access-control #acl-critique
