# Networking Error Handling

Network failures are expected. Treat them as application states rather than exceptional surprises.

## Suggested categories

| Failure | Application behavior |
|---|---|
| No connectivity | Explain offline/unavailable state and preserve recoverability |
| Timeout | Allow retry when appropriate |
| Authentication expired | Refresh or require sign-in |
| Validation failure | Show actionable validation feedback |
| Rate limited | Respect server guidance and avoid aggressive retries |
| Server failure | Show recoverable service error |
| Unknown failure | Log safely and provide generic fallback |

## Retry rules

Retries should be bounded, observable, and appropriate for the operation. Never retry a non-idempotent financial or transactional action merely because a request timed out.

## Logging

Never log credentials, access tokens, payment details, or full sensitive payloads.
