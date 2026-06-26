# The Independence of the Continuum Hypothesis

**Reference:** Cohen, Paul J. (1963, 1964). "The Independence of the Continuum Hypothesis" (I & II). *Proceedings of the National Academy of Sciences* 50(6), 1143–1148 and 51(1), 105–110. [DOI 10.1073/pnas.50.6.1143](https://doi.org/10.1073/pnas.50.6.1143).

## Summary
The papers that resolve Hilbert's first problem and introduce **forcing**, the most powerful technique in modern set theory. Cantor's **continuum hypothesis** (CH) asserts that there is no cardinality strictly between that of the integers and that of the reals — that |𝒫(ℕ)| is the least uncountable cardinal ℵ₁. Gödel had shown in 1938–40, via the **constructible universe** *L*, that CH and the axiom of choice cannot be *disproved* from the ZF axioms (they hold in *L*, an inner model of any model of ZF). Cohen supplies the other half: he constructs models of ZFC in which CH *fails*, and models in which the axiom of choice fails. Together these establish that **CH is independent of ZFC** — neither provable nor refutable — and likewise that AC is independent of ZF.

The method is **forcing**. Starting from a countable transitive model *M* of ZFC, Cohen adjoins a new "generic" object *G* (for ¬CH, enough generic subsets of ℕ to make the continuum larger than ℵ₁) to form an extension *M*[*G*]. The delicate point is that *M* cannot "see" *G*, yet one must guarantee *M*[*G*] still satisfies all the ZFC axioms and controls exactly which new statements become true. Cohen manages this with the **forcing relation** *p* ⊩ φ — a condition *p* (a finite fragment of the generic object) "forces" a sentence φ — defined entirely inside *M*, so that truth in the extension is decided by the ground model even though the generic object lies outside it. Genericity (the filter *G* meets every dense set of *M*) ensures the construction is consistent and that the intended statement holds.

Forcing turned independence from an exotic curiosity into a routine instrument: it is now the standard way to show a statement undecidable in ZFC, and it reframes the foundational picture. Where Gödel's incompleteness theorems show that *any* sufficiently strong consistent theory leaves arithmetic sentences undecided, Cohen shows that one of the most basic questions about the size of the continuum is itself undecided by our standard foundation — not for want of cleverness but in principle. The combined Gödel–Cohen result is the canonical example of a *natural* mathematical statement that is independent of its axioms. Cohen received the Fields Medal (1966) for it.

## Key Ideas
- **Continuum Hypothesis:** there is no cardinality strictly between |ℕ| and |ℝ|; equivalently |𝒫(ℕ)| = ℵ₁.
- **Independence of CH from ZFC:** Gödel (1940, via *L*) shows CH is consistent; Cohen shows ¬CH is consistent — so CH is undecidable in ZFC.
- **Independence of AC from ZF**, by the same model-building technique.
- **Forcing:** extend a countable transitive model *M* by a generic object *G* to get *M*[*G*] satisfying ZFC plus the desired (in)dependence.
- **The forcing relation *p* ⊩ φ:** definable inside the ground model, lets *M* control truth in *M*[*G*] without seeing *G*.
- **Genericity:** *G* meets every dense subset of the forcing poset that lies in *M*, guaranteeing consistency.
- **Meta-mathematical limit:** a basic question of set size is in-principle undecidable from the standard axioms.

## Connections
- [[Set Theory]]
- [[Continuum Hypothesis]]
- [[Forcing]]
- [[Constructible Universe]]
- [[ZFC]]
- [[Cardinality]]
- [[Axiom of Choice]]
- [[Über eine elementare Frage der Mannigfaltigkeitslehre]]
- [[Untersuchungen über die Grundlagen der Mengenlehre I]]
- [[Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I]]

## Conceptual Contribution
- **Claim:** The continuum hypothesis (and the axiom of choice) is independent of the standard axioms of set theory — neither ZFC ⊢ CH nor ZFC ⊢ ¬CH.
- **Mechanism:** Forcing — adjoin a generic filter *G* to a countable transitive model *M* of ZFC, with a forcing relation defined inside *M* that fixes truth in *M*[*G*]; choose the forcing poset so the extension satisfies ¬CH (or ¬AC), complementing Gödel's *L* model where CH holds.
- **Concepts introduced/used:** [[Forcing]], [[Continuum Hypothesis]], [[Constructible Universe]], [[ZFC]], [[Cardinality]]
- **Stance:** foundational independence-result paper (set theory / model theory)
- **Relates to:** Settles the cardinality question opened by [[Über eine elementare Frage der Mannigfaltigkeitslehre|Cantor 1891]] as undecidable in [[Untersuchungen über die Grundlagen der Mengenlehre I|Zermelo's]] ZFC; the set-theoretic counterpart of the syntactic undecidability in [[Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I|Gödel 1931]].

## Tags
#set-theory #continuum-hypothesis #forcing #independence #ZFC #axiom-of-choice #cohen #foundational
