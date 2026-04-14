# Miller's 7±2

George A. Miller, "The Magical Number Seven, Plus or Minus Two" (*Psychological Review*, 1956): working memory can hold approximately 7 ± 2 independent chunks at a time. The result is one of the most-cited findings in cognitive psychology, though modern refinements (Cowan 2001: ~4 chunks) suggest Miller's estimate was generous.

The implication for system and language design: interfaces, specifications, and protocols that require a reader to track many independent elements simultaneously will be misread. A developer cannot hold in working memory every possible control-flow path of a Solidity contract when there are implicit behaviours ([[Fallback Method]], [[Delegatecall]]) lurking at the call site.

[[House on Rock - LangSec in Ethereum Classic]] invokes 7±2 alongside [[Processing Fluency]] to argue that the EVM's contract model overruns the developer's cognitive budget — hidden state changes, implicit sends, and reentrancy opportunities cannot all be tracked simultaneously, so bugs slip through.

## Tags
#cognitive-psychology #working-memory #usability
