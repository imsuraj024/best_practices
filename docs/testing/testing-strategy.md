# Testing Strategy

Use the cheapest test that proves the behavior.

| Test | Best for | Typical speed |
|---|---|---|
| Unit | Business rules, transformations, state transitions | Fast |
| Widget | Rendering and interaction | Medium |
| Integration | Critical end-to-end journeys | Slow |
| Golden | Stable visual contracts | Medium |

## Rules

- Test behavior, not private implementation details.
- Cover failure and empty states.
- Keep tests deterministic.
- Avoid real network dependencies in unit and widget tests.
- Use integration tests selectively for high-value journeys.

## Coverage

Coverage is a signal, not the objective. A high percentage does not guarantee that critical behavior is tested.

## Pull request gate

Every production change should have the appropriate test level for the risk introduced. A refactor may need regression tests; a new business rule should have unit coverage; a critical user journey should have integration coverage.
