# Temporal Proposition

An abstract data type used in Fornara & Colombetti's commitment-based ACL to express the *content* or *condition* of a commitment. A temporal proposition has a statement (in some formal language), a time interval, a temporal mode (∀: must hold throughout the interval, or ∃: must hold at some point in the interval), and a state in {true, false, undefined}. A domain-specific *notifier* sets the state when the truth value resolves, which in turn drives the commitment's update rules (active → fulfilled/violated, conditional → active/cancelled).

## In this vault
- [[A Commitment-Based Approach to Agent Communication]]
- [[Commitment]]
- [[Conditional Commitment]]
