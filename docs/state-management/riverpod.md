# Riverpod Guidance

Use Riverpod when the application benefits from explicit dependency/state providers, composability, and testable asynchronous state.

## Recommended practices

- Keep providers close to the feature they serve unless they are genuinely application-wide.
- Keep side effects in notifiers/services rather than widgets.
- Represent loading, data, and error states explicitly.
- Avoid provider graphs that recreate business logic in multiple places.
- Override dependencies in tests instead of relying on production services.

## Boundary

A provider can coordinate application state, but it should not become a dumping ground for HTTP, parsing, navigation, analytics, and unrelated business rules.

## Testing

Prefer testing state transitions and application behavior with controlled dependencies. Use provider overrides for external systems.
