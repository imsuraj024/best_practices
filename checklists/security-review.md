# Security Review Checklist

## Secrets and storage

- [ ] No credentials, tokens, private keys, or production secrets are committed.
- [ ] Sensitive local data uses appropriate secure storage.
- [ ] Data retention and deletion behavior are defined.

## Authentication and authorization

- [ ] Session expiration is handled.
- [ ] Logout clears appropriate sensitive state.
- [ ] Authorization is enforced by trusted backend systems.
- [ ] Authentication headers are never logged.

## Input and transport

- [ ] External input is validated.
- [ ] Production traffic uses HTTPS/TLS.
- [ ] TLS verification is not disabled.
- [ ] Certificate pinning has been evaluated against the threat model if relevant.

## Logging and privacy

- [ ] Sensitive payloads are not logged.
- [ ] Personal and financial data exposure in logs has been reviewed.
- [ ] Debug logging is disabled or controlled in production.

## Threat model

- [ ] High-value assets are identified.
- [ ] Relevant threats and trust boundaries are documented.
- [ ] Security controls have owners and operational recovery plans.
