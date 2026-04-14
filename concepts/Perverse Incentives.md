# Perverse Incentives

Economic structures that reward the *opposite* of their ostensible aim. The classic form is the "cobra effect": a bounty intended to reduce cobra populations induces breeding-for-bounty. In systems design, perverse incentives arise when a metering or policing mechanism becomes itself an adversarial game with direct monetary reward for gaming it.

Example from [[House on Rock - LangSec in Ethereum Classic]]: the [[Gas Mechanism]] creates a perverse incentive for contract authors to *remove* runtime sanity checks — every conditional costs gas, so defensively-written contracts lose on cost to recklessly-written ones. The policing mechanism itself erodes the behaviour it was supposed to encourage.

## Tags
#mechanism-design #security #incentives
