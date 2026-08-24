# Flutter Engineering Playbook

A practical, opinionated reference for building production-ready Flutter applications.

[![Flutter](https://img.shields.io/badge/Flutter-3.35%2B-02569B?logo=flutter)](https://flutter.dev)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

> **What to do, why it matters, when to use it, when not to use it, and how to implement it.**

## What this repository is

This repository is a living Flutter engineering playbook. It is designed to help developers make better decisions across architecture, state management, networking, performance, security, testing, UI, accessibility, CI/CD, and release management.

The goal is not to collect every possible approach. The goal is to provide a clear recommendation, explain the trade-offs, and show practical implementation patterns.

## Engineering principles

- **Opinionated, not absolute.** Recommendations include context and trade-offs.
- **Show, don't just tell.** Prefer runnable examples over abstract advice.
- **Explain the why.** Understanding the reasoning matters more than memorizing rules.
- **Make anti-patterns visible.** Show what fails and why before showing the better approach.
- **Production first.** Consider security, performance, testing, observability, and release impact.
- **Keep it current.** Flutter and Dart evolve; version-sensitive guidance should say which versions it targets.

## Decision framework

Use this as a starting point rather than a rigid rulebook.

| Problem | Starting recommendation |
|---|---|
| Small UI state | Local state or `ValueNotifier` |
| Feature/application state | Riverpod or the project's established state solution |
| Complex event-driven workflows | BLoC where its event/state model adds value |
| Application structure | Feature-first organization |
| Large domain complexity | Feature-first + clearly separated domain/data concerns |
| API integration | Repository + data-source boundary |
| Large lists | Lazy rendering + pagination |
| Sensitive local data | Platform-backed secure storage |
| Multiple environments | Flavors + explicit configuration |
| Offline requirements | Explicit offline-first strategy |

The right choice depends on application size, team familiarity, existing architecture, testing requirements, and operational constraints.

## Topics

### Architecture

- Clean Architecture
- Feature-first vs layer-first organization
- Dependency injection
- Scalable folder structures
- Architecture decision records

### State management

- Choosing a state management approach
- Riverpod patterns
- BLoC patterns
- Local vs application state
- State-management anti-patterns

### Networking and data

- Repository and data-source patterns
- Error mapping
- Timeouts and retries
- Caching
- Pagination
- Offline-first architecture

### Performance

- Build method optimization
- `const` constructors
- Widget rebuilds
- Lazy loading
- Image optimization
- Memory management
- Profiling and measurement

### Testing

- Testing strategy and pyramid
- Unit testing
- Widget testing
- Integration testing
- Golden testing
- Mocking and test doubles
- Critical-flow coverage

### UI, UX and accessibility

- Responsive layouts
- Theme management
- Animation
- Platform-specific behavior
- Semantics and screen readers
- Color contrast and visual accessibility

### Security

- Secrets management
- Secure local storage
- Certificate pinning evaluation
- Input validation
- Authentication and authorization handling
- Safe logging

### Code quality

- Formatting and linting
- Null safety
- Immutability
- Data classes
- Code generation
- Maintainable naming and boundaries

### CI/CD and release

- GitHub Actions
- Automated analysis and tests
- Flavors and environments
- Version management
- Release readiness
- Deployment safety

## Recommended guide format

Every substantial practice should answer:

1. **Overview**
2. **Problem**
3. **Recommended approach**
4. **Implementation**
5. **Why it works**
6. **Trade-offs**
7. **Common mistakes**
8. **Testing approach**
9. **Performance/security implications** where relevant
10. **When not to use it**
11. **Further reading**

## Anti-pattern format

Where useful, document practices as:

```text
❌ Anti-pattern
   ↓
Why it causes problems
   ↓
⚠️ Consequences
   ↓
✅ Recommended approach
   ↓
Trade-offs
   ↓
How to test it
```

## Production readiness

Before releasing a Flutter application, verify the major engineering areas:

- Architecture boundaries are clear.
- `flutter analyze` passes.
- Formatting is clean.
- Critical business logic has unit coverage.
- Important UI behavior has widget coverage.
- Critical user journeys have integration coverage.
- Loading, empty, success, and error states are handled.
- Network timeouts and error handling are deliberate.
- Sensitive data is stored appropriately.
- No secrets are committed.
- Expensive work is kept out of build methods.
- Large lists and images are optimized.
- Release configuration and signing are verified.
- CI/CD checks pass.
- Crash and performance monitoring is available.

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution standards and [SECURITY.md](SECURITY.md) for security guidance.

## Repository structure

The repository is being built incrementally. Only paths that currently exist should be linked from this README.

```text
best_practices/
├── README.md
├── CONTRIBUTING.md
├── SECURITY.md
└── templates/
```

As documentation and examples are added, they should be organized under focused topic directories rather than creating one large sample application.

## Contribution ideas

- Add a practical guide for a missing engineering decision.
- Add a runnable example.
- Add an anti-pattern and its recommended alternative.
- Improve an existing recommendation with evidence or clearer trade-offs.
- Add a production checklist.
- Update version-sensitive Flutter/Dart guidance.
- Fix broken links or outdated examples.

## License

License information will be added once the repository's licensing decision is finalized.

## Repository

[GitHub: imsuraj024/best_practices](https://github.com/imsuraj024/best_practices)
