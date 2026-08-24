# Flutter Engineering Playbook

> A practical, opinionated guide to building production-ready Flutter applications.

[![Flutter](https://img.shields.io/badge/Flutter-3.35%2B-02569B?logo=flutter)](https://flutter.dev)
[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg)](CONTRIBUTING.md)

The **Flutter Engineering Playbook** helps developers make better engineering decisions across architecture, state management, networking, performance, testing, security, and release management.

The focus is simple:

**What should we do? Why? When should we use it? When should we avoid it? How do we implement and test it?**

---

## Contents

- [What this project is](#what-this-project-is)
- [Engineering principles](#engineering-principles)
- [Quick decision guide](#quick-decision-guide)
- [Engineering areas](#engineering-areas)
- [Production readiness](#production-readiness)
- [Repository structure](#repository-structure)
- [Guide standard](#guide-standard)
- [Contributing](#contributing)
- [Roadmap](#roadmap)
- [License](#license)

---

## What this project is

This is a **living engineering reference**, not a collection of generic Flutter tips.

Each recommendation should provide enough context to make an engineering decision confidently. Where multiple approaches are valid, the playbook explains the trade-offs instead of pretending there is one universal answer.

### The playbook is designed for

- Individual Flutter developers
- Engineering teams
- Code reviews
- New project setup
- Architecture decisions
- Production readiness reviews
- Technical onboarding

---

## Engineering principles

### 1. Opinionated, not absolute

Prefer a clear recommendation, but explain when another option is better.

### 2. Show, don't just tell

Prefer practical examples and implementation patterns over abstract explanations.

### 3. Explain the why

A rule is useful only when engineers understand the problem it solves.

### 4. Make anti-patterns visible

Show common mistakes, their consequences, and the better alternative.

### 5. Production first

Consider security, performance, testing, observability, and release impact.

### 6. Measure before optimizing

Performance claims should be supported by reproducible measurements.

### 7. Keep version-sensitive guidance explicit

Flutter and Dart evolve. Recommendations that depend on a framework or language version should state the target version.

---

## Quick decision guide

Use these as starting points, not rigid rules.

| Problem | Starting recommendation |
|---|---|
| Small UI state | `StatefulWidget` or local state |
| Small reactive local state | `ValueNotifier` |
| Shared application state | Riverpod or the project's established solution |
| Complex event-driven workflows | BLoC when explicit events and states add value |
| Application structure | Feature-first organization |
| Complex domain | Feature-first with separated domain/data concerns |
| API integration | Repository + data-source boundary |
| Large collections | Lazy rendering + pagination |
| Sensitive local data | Platform-backed secure storage |
| Multiple environments | Flavors + explicit configuration |
| Offline requirements | Explicit offline-first strategy |

The final choice should consider application size, team familiarity, existing architecture, testing requirements, and operational constraints.

---

## Engineering areas

### Architecture

Build applications around clear feature boundaries and introduce additional layers when complexity justifies them.

**Guide:** [Architecture](docs/architecture/README.md)

Covers:

- Feature-first organization
- Clean Architecture
- Layer boundaries
- Dependency injection
- Scalable folder structures
- Architecture decision records

### State management

Keep state as close as possible to the scope that owns it. Avoid making every piece of state global.

**Guide:** [State Management](docs/state-management/README.md)

Covers:

- Local vs application state
- Riverpod
- BLoC
- State transitions
- Side effects
- State-management anti-patterns

### Networking & data

Keep transport concerns outside presentation code and make failure behavior explicit.

**Guide:** [Networking & Data](docs/networking/README.md)

Covers:

- Repository patterns
- Data sources
- Error mapping
- Timeouts
- Retries
- Caching
- Pagination
- Offline-first architecture

### Performance

Optimize based on measured user impact rather than assumptions.

**Guide:** [Performance](docs/performance/README.md)

Covers:

- Widget rebuilds
- `const`
- Build method optimization
- Lazy rendering
- Pagination
- Image optimization
- Memory management
- Profiling

### Testing

Use the cheapest test that proves the behavior correctly.

**Guide:** [Testing](docs/testing/README.md)

Covers:

- Unit tests
- Widget tests
- Integration tests
- Golden tests
- Test doubles
- Critical-flow coverage

### Security

Treat security as part of application design rather than a final release checklist.

**Guide:** [Security](docs/security/README.md)

Covers:

- Secrets management
- Secure local storage
- Input validation
- Authentication
- Authorization
- Safe logging
- Certificate pinning evaluation

### Code quality

The repository already contains reusable analysis configurations under `templates/analysis_option/`, including a base configuration and domain-specific configurations.

Use them as starting points and adapt rules to the application rather than blindly enabling every lint.

### CI/CD & release

The playbook will provide guidance for automated analysis, testing, environment configuration, versioning, and safe releases.

---

## Production readiness

Use the [Production Readiness Checklist](checklists/production-readiness.md) before releasing a Flutter application.

### Minimum release gate

- [ ] Architecture boundaries are clear.
- [ ] Formatting passes.
- [ ] `flutter analyze` passes.
- [ ] Critical business logic is tested.
- [ ] Important UI behavior is tested.
- [ ] Critical user journeys are tested.
- [ ] Loading, empty, success, and error states are handled.
- [ ] Network timeouts and failures are handled deliberately.
- [ ] Sensitive data is stored appropriately.
- [ ] No secrets are committed.
- [ ] Expensive work is not performed unnecessarily during builds.
- [ ] Large lists and images are optimized.
- [ ] Release configuration and signing are verified.
- [ ] CI checks pass.
- [ ] Crash and performance monitoring is available.

---

## Repository structure

```text
best_practices/
│
├── README.md
├── CONTRIBUTING.md
├── SECURITY.md
│
├── docs/
│   ├── architecture/
│   ├── state-management/
│   ├── networking/
│   ├── performance/
│   ├── testing/
│   └── security/
│
├── checklists/
│   └── production-readiness.md
│
└── templates/
    └── analysis_option/
```

The repository is intentionally being built incrementally. Documentation should be added under focused topic directories rather than turning the project into one oversized sample application.

---

## Guide standard

Every substantial practice should answer the following questions:

1. **Overview** — What is this?
2. **Problem** — What problem does it solve?
3. **Recommendation** — What should we do?
4. **Implementation** — How do we apply it?
5. **Why** — Why is this approach preferred?
6. **Trade-offs** — What do we give up?
7. **Common mistakes** — What should we avoid?
8. **Testing** — How should it be verified?
9. **Performance & security** — What are the relevant implications?
10. **When not to use it** — When is another approach better?
11. **Further reading** — Where can engineers learn more?

### Anti-pattern format

Where useful, guides should follow this flow:

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
Testing strategy
```

---

## Contributing

Read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting a change.

Useful contributions include:

- New engineering guides
- Runnable examples
- Anti-pattern comparisons
- Better decision frameworks
- Production checklists
- Evidence-backed improvements
- Updated Flutter/Dart guidance
- Documentation and link fixes

For security-related concerns, see [SECURITY.md](SECURITY.md).

---

## Roadmap

### Foundation

- [x] Engineering playbook README
- [x] Contribution guidelines
- [x] Security policy
- [x] Architecture foundation
- [x] State management foundation
- [x] Networking foundation
- [x] Performance foundation
- [x] Testing foundation
- [x] Security foundation
- [x] Production readiness checklist

### Next

- [ ] Detailed architecture guides
- [ ] Riverpod and BLoC examples
- [ ] Networking examples
- [ ] Performance examples
- [ ] Testing examples
- [ ] UI and accessibility guides
- [ ] Code-quality guides
- [ ] CI/CD workflows
- [ ] Runnable anti-pattern examples
- [ ] Architecture decision record templates

---

## License

License information will be added once the repository's licensing decision is finalized.

---

## Repository

**GitHub:** [imsuraj024/best_practices](https://github.com/imsuraj024/best_practices)
