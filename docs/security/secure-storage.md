# Secure Storage

Sensitive local data should use platform-backed protection appropriate to its sensitivity and threat model.

## Suitable candidates

Examples include:

- Refresh tokens
- Session credentials
- Encryption keys
- Other secrets that must survive application restarts

Do not automatically store every preference in secure storage. Non-sensitive settings usually belong in ordinary application storage.

## Rules

- Minimize what is stored.
- Define retention and deletion behavior.
- Never hard-code secrets in source code.
- Never log stored credentials.
- Handle storage failures explicitly.
- Consider device compromise in the threat model.

## Important boundary

Secure local storage does not replace server-side authorization. A compromised client must not be trusted to enforce access control.
