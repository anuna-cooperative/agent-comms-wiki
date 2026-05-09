# Introduction to Choreographies

**Reference:** Montesi, F. (2023). *Introduction to Choreographies*. Cambridge University Press, Cambridge, UK. ISBN 978-1-108-47744-7 (hardback). [URL](https://www.cambridge.org/core/books/introduction-to-choreographies/AB2A8C29F595125ECCD86CD61E3637D8). Citation-only entry; the book is paywalled and the local vault does not hold a source PDF.

## Summary
Montesi's *Introduction to Choreographies* is the first textbook-level treatment of [[Choreographic Programming]]. It develops the field systematically from process-calculus foundations (CCS, π-calculus) through binary and multiparty [[Session Types]] to fully-fledged choreographic calculi and their compilation to distributed implementations via [[Endpoint Projection]]. The book is organised around the *correspondence theorem* — the result that a well-formed choreography is bisimilar to the parallel composition of its endpoint projections — and chapters incrementally build the language features (asynchrony, recursion, higher-order communication, knowledge of choice, dynamic participants) needed to express real protocols while preserving deadlock-freedom and communication safety by construction. Worked examples include classic protocols (bookseller, two-buyer, third-party authentication) implemented as choreographies and then projected to executable code.

The book is the canonical contemporary reference and the natural starting point for any reader entering the choreographic-programming literature; it is the primary background that [[Pact - A Choreographic Language for Agentic Ecosystems|Pact]] (Gopinathan et al. CP 2026) cites for choreographic programming as such, and the bridge from the foundational papers ([[Structured Communication-Centred Programming for Web Services]], [[Multiparty Asynchronous Session Types]]) to the modern implementation landscape (Choral, HasChor, ChoRus). Held in the vault primarily as an authoritative pointer rather than a paper-summary entry.

## Connections
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Session Types]]
- [[Structured Communication-Centred Programming for Web Services]]
- [[Multiparty Asynchronous Session Types]]
- [[On the Monitorability of Session Types]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]
- [[Communicating Sequential Processes]]

## Conceptual Contribution
- **Claim:** Choreographic programming has matured to the point where a single textbook can present the field as a coherent discipline — process calculi, session types, choreographic calculi, projection, and implementation — with the correspondence theorem (well-formed choreography ≡ parallel composition of its projections) as the organising spine.
- **Concepts introduced/used:** [[Choreographic Programming]], [[Endpoint Projection]], [[Session Types]], correspondence theorem, knowledge of choice, asynchrony
- **Stance:** textbook / canonical reference
- **Relates to:** The pedagogical synthesis of [[Structured Communication-Centred Programming for Web Services]] (Carbone-Honda-Yoshida 2007/2012) and [[Multiparty Asynchronous Session Types]] (Honda-Yoshida-Carbone POPL 2008) plus the subsequent decade of work; the natural entry point for understanding [[Pact - A Choreographic Language for Agentic Ecosystems]] in lineage. Companion to other foundational textbook references in the vault such as [[Foundations of Logic Programming - Lloyd]].

## Tags
#choreographic-programming #textbook #session-types #foundational #citation-only
