# Fairness Assumption

A **fairness assumption** is a condition on executions that rules out an action being ignored forever despite having sufficient opportunities to run. An action is *enabled* when the current state allows it to execute. Fairness is often needed to prove a [[Liveness Property]]: rules describing what may happen do not, by themselves, ensure that a scheduler will ever choose a particular action.

For example, an agent may have a request waiting in its inbox and be ready to process it. A model can still allow other agents to run forever while that request waits. Assuming fairness for the processing action excludes this execution, provided the action meets the chosen enabling condition.

## Weak and strong fairness

- **Weak fairness:** if an action remains enabled continuously from some point onward, it must eventually execute. If it remains enabled after execution, the same requirement applies again.
- **Strong fairness:** if an action is enabled infinitely often, it must execute infinitely often, even if it is repeatedly disabled between opportunities. Strong fairness implies weak fairness.

Imagine two agents competing for a lock. If the lock repeatedly becomes available but another agent always takes it first, the waiting agent's acquisition action is only intermittently enabled. Weak fairness permits this starvation; strong fairness for that acquisition action excludes it, assuming opportunities continue indefinitely. See [Lamport's PlusCal tutorial, Session 9](https://lamport.azurewebsites.net/tla/tutorial/session9.html).

## What the assumption guarantees

Fairness must name its scope: fairness for scheduling an agent does not automatically imply fairness for each request or action within that agent. A fair scheduler also cannot make a permanently disabled action run or make a crashed agent recover.

Fairness supplies no fixed deadline, equal share of processing time, or guarantee of successful completion. Proving that every request eventually receives a reply still requires reasoning about the protocol and its environment, including failures and message delivery. In particular, process fairness alone need not ensure delivery over a lossy channel; see [Lamport's PlusCal tutorial, Session 11](https://lamport.azurewebsites.net/tla/tutorial/session11-2.html).

In a liveness proof, fairness is an explicit premise: **under these scheduling or delivery assumptions, the desired progress follows**. An implementation needs to justify those premises through its scheduler, queues, retry policy, or environmental guarantees.

## Connections

- [[Liveness Property]] — the eventual progress that fairness can help establish.
- [[Safety Property]] — constraints on bad events; fairness concerns eventual action rather than preventing an unsafe step.

## Tags
#verification #distributed-systems #safety-liveness
