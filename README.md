# Agent Communications — Paper Vault

A zetl vault of summaries of every paper in this repository.

## Conventions

- One markdown file per paper. Filenames are slugified titles (e.g. `KQML-Overview.md`).
- Each note contains:
  - `# Title` heading
  - **Reference** (authors, year, venue/source file)
  - **Summary** — 1–3 paragraphs of core ideas
  - **Key ideas** — bullet list
  - **Connections** — `[[wikilinks]]` to related notes or concept pages
- Concept notes (e.g. `[[KQML]]`, `[[FIPA-ACL]]`, `[[Gossip Protocols]]`) act as hubs.
- [[index]] is the Map of Content (MOC) grouping every note by theme.

## Layout

- [[index]] — Map of Content, every paper grouped by theme
- [[concept-map]] — **the conceptual tour**: the ideas and how they interlock
- Per-paper notes contain summary + key ideas + connections + `## Conceptual Contribution` (claim / mechanism / concepts / stance / relates-to)
- Concept hubs (e.g. [[KQML]], [[LangSec]], [[Commitment-based Semantics]], [[BDI]]) act as junctions
- Fine-grained technical terms are wikilinked without dedicated pages ("wanted pages") so that future notes can backfill definitions — expected zetl pattern, not a defect

## Commands

```
zetl list         # list notes
zetl check        # validate links
zetl stats        # graph stats
zetl serve        # browse
```
