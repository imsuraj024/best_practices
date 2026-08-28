# Flutter Engineering Playbook

> A practical, opinionated guide to building production-ready Flutter applications.

[![Flutter](https://img.shields.io/badge/Flutter-3.35%2B-02569B?logo=flutter)](https://flutter.dev)
[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg)](CONTRIBUTING.md)

The **Flutter Engineering Playbook** helps developers make better engineering decisions across architecture, state management, networking, performance, testing, security, UI/accessibility, code quality, and release management.

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

1. **Opinionated, not absolute** — recommend a default and explain exceptions.
2. **Show, don't just tell** — prefer practical implementation patterns.
3. **Explain the why** — teach the problem behind the rule.
4. **Make anti-patterns visible** — show failure modes and better alternatives.
5. **Production first** — include security, performance, testing, and release impact.
6. **Measure before optimizing** — do not invent performance claims.
7. **Keep version-sensitive guidance explicit** — state the Flutter/Dart target when relevant.

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

Build around clear feature boundaries and introduce additional layers when complexity justifies them.

**Guides:**

- [Architecture overview](docs/architecture/README.md)
- [Feature-first architecture](docs/architecture/feature-first.md)
- [Clean Architecture](docs/architecture/clean-architecture.md)
- [Dependency injection](docs/architecture/dependency-injection.md)
- [Architecture Decision Record](docs/architecture/architecture-decision-record.md)

**Examples:** [Architecture examples](examples/architecture/README.md)

### State management

Keep state as close as possible to the scope that owns it. Avoid making every piece of state global.

**Guides:**

- [State management overview](docs/state-management/README.md)
- [Choosing state management](docs/state-management/choosing-state-management.md)
- [Riverpod](docs/state-management/riverpod.md)
- [BLoC](docs/state-management/bloc.md)

**Examples:** [State management examples](examples/state-management/README.md)

### Networking & data

Keep transport concerns outside presentation code and make failure behavior explicit.

**Guides:**

- [Networking overview](docs/networking/README.md)
- [API architecture](docs/networking/api-architecture.md)
- [Error handling](docs/networking/error-handling.md)
- [Caching and pagination](docs/networking/caching-and-pagination.md)

**Examples:** [Networking examples](examples/networking/README.md)

### Performance

Optimize based on measured user impact rather than assumptions.

**Guide:** [Performance](docs/performance/README.md)

Covers widget rebuilds, `const`, lazy rendering, pagination, images, memory, and profiling.

**Examples:** [Performance examples](examples/performance/README.md)

### Testing

Use the cheapest test that proves the behavior correctly.

**Guides:**

- [Testing overview](docs/testing/README.md)
- [Testing strategy](docs/testing/testing-strategy.md)
- [Unit testing](docs/testing/unit-testing.md)
- [Widget testing](docs/testing/widget-testing.md)
- [Integration testing](docs/testing/integration-testing.md)

**Examples:** [Testing examples](examples/testing/README.md)

### Security

Treat security as part of application design rather than a final release checklist.

**Guides:**

- [Security overview](docs/security/README.md)
- [Secure storage](docs/security/secure-storage.md)
- [Authentication and authorization](docs/security/authentication.md)
- [Input validation](docs/security/input-validation.md)
- [Network security](docs/security/network-security.md)
- [Threat modeling](docs/security/threat-model.md)

**Checklist:** [Security review](checklists/security-review.md)

### UI, UX & accessibility

Build interfaces that remain usable across screen sizes, input methods, text scales, and assistive technologies.

**Guides:**

- [UI/UX overview](docs/ui-ux/README.md)
- [Design system](docs/ui-ux/design-system.md)
- [Accessibility](docs/ui-ux/accessibility.md)
- [Responsive layouts](docs/ui-ux/responsive-layouts.md)

**Checklist:** [UI and accessibility](checklists/ui-accessibility.md)

### Code quality

Keep code easy to understand, change, test, and review.

**Guide:** [Code quality](docs/code-quality/README.md)

### CI/CD & release

Automate the checks that protect the main branch and make releases repeatable.

**Guide:** [CI/CD & release](docs/deployment/README.md)

**CI workflow:** `.github/workflows/flutter.yml`

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
├── LICENSE
│
├── .github/
│   └── workflows/
│       └── flutter.yml
│
├── docs/
│   ├── architecture/
│   ├── state-management/
│   ├── networking/
│   ├── performance/
│   ├── testing/
│   ├── security/
│   ├── ui-ux/
│   ├── code-quality/
│   └── deployment/
│
├── examples/
│   ├── architecture/
│   ├── state-management/
│   ├── networking/
│   ├── testing/
│   └── performance/
│
├── checklists/
│   ├── production-readiness.md
│   ├── ui-accessibility.md
│   ├── security-review.md
│   └── performance-review.md
│
└── templates/
    └── analysis_option/
```

---

## Guide standard

Every substantial practice should answer:

1. **Overview**
2. **Problem**
3. **Recommendation**
4. **Implementation**
5. **Why**
6. **Trade-offs**
7. **Common mistakes**
8. **Testing**
9. **Performance/security implications** where relevant
10. **When not to use it**
11. **Further reading**

### Anti-pattern format

```text
Anti-pattern
      ↓
Why it causes problems
      ↓
Consequences
      ↓
Recommended approach
      ↓
Trade-offs
      ↓
Testing strategy
```

---

## Contributing

Read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting a change.

Useful contributions include new engineering guides, runnable examples, anti-pattern comparisons, decision frameworks, production checklists, evidence-backed improvements, and updated Flutter/Dart guidance.

For security-related concerns, see [SECURITY.md](SECURITY.md).

---

## Roadmap

### Completed

- [x] Engineering playbook README
- [x] Contribution guidelines
- [x] Security policy
- [x] Architecture foundation and guides
- [x] State management foundation and guides
- [x] Networking foundation and guides
- [x] Performance foundation and runnable example
- [x] Testing foundation and guides
- [x] Security foundation
- [x] UI/UX and accessibility foundation
- [x] Code-quality foundation
- [x] CI/CD and release foundation
- [x] Production readiness checklist
- [x] Performance review checklist
- [x] Security review checklist
- [x] UI/accessibility checklist
- [x] Runnable Flutter examples for architecture, state, networking, testing, and performance
- [x] Automated documentation/link validation

### Next

- [ ] Add runnable anti-pattern library
- [ ] Add more ADR examples
- [ ] Expand performance examples with profiling scenarios
- [ ] Expand runnable examples with failure and edge-case scenarios

---

## License

This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for the full text.

---

## Repository

**GitHub:** [imsuraj024/best_practices](https://github.com/imsuraj024/best_practices)
