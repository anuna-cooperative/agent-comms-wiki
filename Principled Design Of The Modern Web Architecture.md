# Principled Design of the Modern Web Architecture

**Reference:** Fielding & Taylor (2000). *ICSE 2000*. Source file: `337180.337228.pdf`

## Summary
Fielding and Taylor introduce the Representational State Transfer (REST) architectural style as the abstract model that guided the redesign of HTTP/1.1 and URIs. REST is presented as a coordinated set of architectural constraints (client-server, statelessness, cacheability, uniform interface, layered system, code-on-demand) chosen to meet the needs of an internet-scale distributed hypermedia system.

The paper defines REST's data elements (resource, representation, metadata, control data), connectors (client, server, cache, resolver, tunnel), and components (origin server, gateway, proxy, user agent), and uses multiple architectural views (process, data, connector) to illustrate how they combine. It then evaluates how well HTTP/1.1 and related Web standards conform to REST, using the style to diagnose architectural mismatches (e.g., cookies, embedded frames).

## Key Ideas
- REST as an architectural *style* (set of constraints), not an architecture.
- Resources are conceptual, addressed by URIs; representations are transferred.
- Statelessness and caching for scalability; uniform interface for generality.
- Intermediaries (proxies, gateways) enabled by layered connectors.
- Mismatches (e.g., cookies, HTML frames) as REST-style violations.

## Connections
- [[Agent Communication Languages]]
- [[Model Context Protocol]]
- [[Agent-to-Agent Protocol]]

## Conceptual Contribution
- **Claim:** Internet-scale distributed hypermedia requires a disciplined *architectural style* - REST - derived from specific constraints rather than any particular implementation.
- **Mechanism:** Decomposes architectures into data elements, connectors, and components; derives REST by incrementally adding constraints (client-server, stateless, cache, uniform interface, layered, code-on-demand); evaluates HTTP/1.1, URIs, cookies, frames against the style.
- **Concepts introduced/used:** [[REST]], [[Uniform Interface]], [[Statelessness]], [[Layered Systems]], [[Resources]], [[Representations]], [[Architectural Styles]], [[Hypermedia]]
- **Stance:** foundational
- **Relates to:** Provides the architectural substrate for REST-native agent protocols ACP, [[Agent-to-Agent Protocol]] and JSON-RPC [[Model Context Protocol]] covered in [[Survey Of Agent Interoperability Protocols]]; its uniform-interface constraint contrasts with the performative-rich messaging of [[KQML]]/[[FIPA-ACL]].

## Tags
#web-architecture #REST #distributed-systems #foundational
