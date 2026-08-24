# Testing

Testing should give confidence in behavior, not maximize a coverage number in isolation.

## Testing pyramid

```text
        Integration
       /            \
    Widget          Widget
      /                \
           Unit
```

Use the cheapest test that proves the behavior.

## Recommended coverage

### Unit tests

Use for business rules, transformations, validation, state transitions, and repository behavior.

### Widget tests

Use for important rendering and interaction behavior, including loading, error, empty, and success states.

### Integration tests

Use for critical end-to-end journeys such as authentication, checkout, payments, or other high-value workflows.

## Rules

- Test behavior rather than private implementation details.
- Include failure paths, not only happy paths.
- Keep tests deterministic.
- Avoid unnecessary network calls in unit and widget tests.
- Prefer meaningful test names that describe behavior.

## Anti-patterns

- Chasing arbitrary 100% coverage.
- Snapshotting everything with golden tests.
- Tests that depend on timing or real external services.
- Mocks that reproduce implementation rather than a useful boundary.
