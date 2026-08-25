# Integration Testing

Use integration tests for critical user journeys where confidence across multiple layers matters.

## Good candidates

- Authentication
- Checkout or payment flows
- Account recovery
- Critical data submission
- High-value navigation journeys

## Rules

- Keep the number of end-to-end tests focused.
- Use stable test data and controlled environments.
- Avoid relying on third-party systems that make the suite nondeterministic.
- Test failure and recovery paths for critical workflows.

## Example journey

```text
Launch
  ↓
Sign in
  ↓
Load account
  ↓
Perform critical action
  ↓
Verify user-visible result
```

Integration tests complement unit and widget tests; they should not replace them.
