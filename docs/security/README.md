# Security

Security is part of application design, not a release-only activity.

## Core rules

- Never commit secrets, private keys, credentials, or production tokens.
- Store sensitive local data using appropriate platform-backed secure storage.
- Validate and sanitize untrusted input.
- Treat authentication and authorization as separate concerns.
- Avoid logging sensitive information.
- Minimize the amount of sensitive data retained on the device.
- Evaluate certificate pinning based on threat model and operational requirements rather than treating it as universally mandatory.

## Secure logging

Logs should help diagnose failures without exposing credentials, authentication tokens, payment information, personal data, or sensitive API responses.

## Example-code rule

All repository examples must use placeholders and synthetic data. Never copy real production configuration into examples.

## Security review questions

- What data is sensitive?
- Where is it stored?
- Who can access it?
- What happens if the device is compromised?
- What is logged?
- How are credentials rotated or revoked?
- What happens when authentication expires?
