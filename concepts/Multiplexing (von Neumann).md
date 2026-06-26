# Multiplexing (von Neumann)

Von Neumann's redundancy scheme for reliable computation from unreliable parts: each logical line is replaced by a *bundle* of N parallel lines, with a signal encoded by the fraction of lines stimulated (near-all = 1, near-none = 0). Gates act on whole bundles, and a [[Restoring Organ]] after each stage renormalises the stimulation level back toward the extremes so errors do not accumulate. With large enough N the failure probability per multiplexed gate stays below threshold, giving arbitrarily reliable circuits.

## In this vault
- [[Probabilistic Logics and the Synthesis of Reliable Organisms from Unreliable Components]]
- [[Triple Modular Redundancy]]
- [[Restoring Organ]]
