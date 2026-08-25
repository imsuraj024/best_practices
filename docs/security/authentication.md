# Authentication and Authorization

Authentication establishes who the user is. Authorization determines what that user is allowed to do.

## Client responsibilities

- Keep authentication state explicit.
- Handle token expiration and re-authentication deliberately.
- Clear sensitive local state on logout when appropriate.
- Treat server authorization responses as authoritative.
- Avoid embedding authorization rules only in the client.

## Session lifecycle

```text
Unauthenticated
      ↓
Authenticating
      ↓
Authenticated
      ↓
Refreshing / Re-authenticating
      ↓
Authenticated OR Unauthenticated
```

Design explicit behavior for expired sessions, revoked credentials, offline startup, and logout.

## Avoid

- Treating a hidden UI button as authorization.
- Storing long-lived secrets unnecessarily.
- Assuming a token is valid forever.
- Logging authentication headers.
