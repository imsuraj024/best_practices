# Networking and Data

Treat networking as an infrastructure boundary. UI code should consume application-friendly states rather than raw HTTP details.

## Recommended flow

```text
UI
 ↓
Application / state layer
 ↓
Repository
 ↓
Remote data source
 ↓
HTTP client
```

## Rules

- Configure connection and receive timeouts.
- Map transport failures into meaningful application errors.
- Keep retry policies bounded and intentional.
- Centralize authentication and request configuration.
- Never log tokens, passwords, payment data, or sensitive payloads.
- Define caching behavior explicitly.
- Use pagination for potentially large collections.

## Offline-first

Use offline-first architecture when the product requires useful behavior without connectivity. Define source-of-truth rules, synchronization, conflict handling, and stale-data behavior before implementation.

## Avoid

- HTTP calls directly from widgets.
- Unlimited automatic retries.
- Swallowing exceptions and returning empty data.
- Treating every HTTP error as the same user-facing error.
