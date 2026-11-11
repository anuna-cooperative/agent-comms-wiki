# Mazurkiewicz Trace

A **Mazurkiewicz trace** is an equivalence class of action sequences under swaps of adjacent independent actions. If `a` and `b` are independent, `uabv` and `ubav` describe the same concurrent behavior. The equivalence class can also be represented as a labeled partial order whose order records dependence and leaves independent occurrences incomparable.

Traces start from sequential observations and quotient away causally irrelevant scheduling choices. Unlike an arbitrary [[Pomset]], their partial orders are generated from a fixed independence relation over action labels.

## In this vault

- [[Concurrent Program Schemes and Their Interpretations]] — Mazurkiewicz's foundational 1977 treatment.
- [[Models for Concurrency]] — compares traces with nets, event structures, and pomsets.
- [[Modeling Concurrency with Partial Orders]] — a direct partial-order alternative.
- [[Event Structure]] — represents enabling and conflict across possible histories.
