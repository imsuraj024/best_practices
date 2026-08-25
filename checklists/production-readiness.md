# Flutter Production Readiness Checklist

## Architecture

- [ ] Feature boundaries are clear.
- [ ] UI is separated from business and data concerns.
- [ ] Dependencies are testable.

## Code quality

- [ ] Formatting passes.
- [ ] `flutter analyze` passes.
- [ ] No unexplained analyzer warnings remain.

## State and UX

- [ ] Loading, success, empty, and error states are handled.
- [ ] Local state is not unnecessarily global.
- [ ] Accessibility has been reviewed for critical flows.

## Networking and data

- [ ] Timeouts are configured.
- [ ] Error mapping is deliberate.
- [ ] Retry behavior is bounded.
- [ ] Caching and pagination behavior is defined where needed.

## Security

- [ ] No secrets are committed.
- [ ] Sensitive local data uses appropriate secure storage.
- [ ] Sensitive information is not logged.
- [ ] Authentication and authorization failures are handled safely.

## Performance

- [ ] Expensive work is kept out of build methods.
- [ ] Large lists are lazily rendered.
- [ ] Images are appropriately sized and cached.
- [ ] Critical flows have been profiled where performance is a concern.

## Testing

- [ ] Critical business logic has unit coverage.
- [ ] Important UI behavior has widget coverage.
- [ ] Critical user journeys have integration coverage.
- [ ] Failure paths are tested.

## Release

- [ ] Version and build numbers are correct.
- [ ] Environment configuration is verified.
- [ ] Release signing is secure.
- [ ] CI checks pass.
- [ ] Crash and performance monitoring is available.
