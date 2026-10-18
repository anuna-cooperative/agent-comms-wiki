# Injective Function

A function is **injective**, or **one-to-one**, when different inputs always produce different outputs. Equivalently, if f(x) = f(y), then x = y. No two distinct inputs collide at the same output.

For example, f(n) = 2n on the integers is injective: different integers have different doubles. By contrast, f(n) = n² on the integers is not injective, because f(2) = f(−2) = 4.

Injectivity does not require every possible output to be used. Assigning three people to three distinct seats in a room with ten seats is injective. Requiring every seat to be occupied is a different property, called *surjectivity*; a function that is both injective and surjective is *bijective*.

## Connection to recognition

The [[Pigeonhole Principle]] says that no function from a larger finite set to a smaller one can be injective: some inputs must share an output.

For a finite-state [[Recognizer]], consider the function that maps each input prefix to the state reached after reading it. This function need not be injective over all prefixes: prefixes may safely share a state when every possible continuation requires the same acceptance decision. However, it must be injective on any set of pairwise distinguishable prefixes. Merging two prefixes that require different decisions for a common continuation forces a recognition error. The [[Myhill-Nerode Theorem]] formalises this distinction.

## In this vault

- [[Pigeonhole Principle]]
- [[Myhill-Nerode Theorem]]
- [[Recognizer]]
