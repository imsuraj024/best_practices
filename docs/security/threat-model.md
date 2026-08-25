# Threat Modeling

Security controls are most useful when tied to a concrete threat model.

## Start with assets

Identify:

- Credentials and session tokens
- Personal and financial data
- Device-stored secrets
- High-value business actions
- APIs and privileged operations

## Then identify threats

Ask:

1. Who could attack this asset?
2. What access do they have?
3. What happens if the client is modified or compromised?
4. Which controls reduce likelihood or impact?
5. How will the team detect and respond to abuse?

## Client trust boundary

Assume a determined attacker can inspect and modify a client application. Authorization, transaction integrity, and other security-critical decisions must therefore be enforced by trusted backend systems where applicable.

## Output

A useful threat model should produce concrete controls, owners, assumptions, and residual risks rather than a generic list of security technologies.
