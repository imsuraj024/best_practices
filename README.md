<div align="center">

# FLUTTER ENGINEERING PLAYBOOK

**Practical, opinionated guidance for production Flutter applications.**

Not a list of tips. A place to make better engineering decisions.

<br>

[![Flutter](https://img.shields.io/badge/Flutter-3.35%2B-02569B?logo=flutter&logoColor=white)](https://flutter.dev/) [![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg)](CONTRIBUTING.md)

</div>

---

## The idea

Good engineering guidance should answer more than **what** to do.

This playbook is organized around:

**What should we do? Why? When should we use it? When should we avoid it? How do we implement and test it?**

Each recommendation aims to make the trade-offs visible rather than pretend there is one universal answer.

## Start here

| If you're working on… | Start with… |
| --- | --- |
| Application structure | [Feature-first architecture](docs/architecture/feature-first.md) |
| State | [Choosing state management](docs/state-management/choosing-state-management.md) |
| APIs | [API architecture](docs/networking/api-architecture.md) |
| Performance | [Performance guide](docs/performance/README.md) |
| Tests | [Testing strategy](docs/testing/testing-strategy.md) |
| Security | [Threat modeling](docs/security/threat-model.md) |
| UI quality | [Responsive layouts](docs/ui-ux/responsive-layouts.md) |
| Releases | [CI/CD & release](docs/deployment/README.md) |

## Engineering principles

1. **Opinionated, not absolute** — recommend a default and explain exceptions.
2. **Show, don't just tell** — prefer practical implementation patterns.
3. **Explain the why** — teach the problem behind the rule.
4. **Make anti-patterns visible** — show failure modes and better alternatives.
5. **Production first** — include security, performance, testing and release impact.
6. **Measure before optimizing** — do not invent performance claims.
7. **Make version-sensitive guidance explicit** — state the Flutter/Dart target when relevant.

## The playbook

**Architecture**  
Feature boundaries, Clean Architecture, dependency injection and architecture decision records.

[Explore architecture →](docs/architecture/README.md)

**State management**  
Choosing the smallest appropriate state scope, with Riverpod and BLoC guidance.

[Explore state management →](docs/state-management/README.md)

**Networking & data**  
API boundaries, failure handling, caching and pagination.

[Explore networking →](docs/networking/README.md)

**Performance**  
Measured optimization across rebuilds, rendering, memory, images and large collections.

[Explore performance →](docs/performance/README.md)

**Testing**  
A practical strategy across unit, widget and integration tests.

[Explore testing →](docs/testing/README.md)

**Security**  
Secure storage, authentication, validation, network security and threat modeling.

[Explore security →](docs/security/README.md)

**UI, UX & accessibility**  
Design systems, responsive layouts and accessibility across devices and input methods.

[Explore UI/UX →](docs/ui-ux/README.md)

**Code quality**  
Practices for code that is easier to understand, change, test and review.

[Explore code quality →](docs/code-quality/README.md)

**CI/CD & release**  
Automated checks and repeatable release workflows.

[Explore deployment →](docs/deployment/README.md)

## Production gate

Before shipping, use the [Production Readiness Checklist](checklists/production-readiness.md).

```text
Architecture ──► Format / Analyze ──► Test ──► Security ──► Release ──► Observe
```

The checklist covers architecture boundaries, tests, failure states, network behavior, sensitive data, secrets, performance, signing, CI and production monitoring.

## Guide standard

Every substantial practice should cover:

`Overview → Problem → Recommendation → Implementation → Why → Trade-offs → Mistakes → Testing → Implications → When not to use`

Anti-patterns should make the failure mode obvious:

```text
❌ Anti-pattern
      ↓
Why it fails
      ↓
Consequences
      ↓
✅ Recommended approach
      ↓
Trade-offs + testing
```

## Repository map

```text
best_practices/
├── docs/         # engineering guides
├── examples/     # practical implementations
├── checklists/   # production review gates
├── templates/    # reusable project templates
└── .github/      # CI
```

## Contributing

Useful contributions include new engineering guides, runnable examples, anti-pattern comparisons, decision frameworks, production checklists, evidence-backed improvements and updated Flutter/Dart guidance.

See [CONTRIBUTING.md](CONTRIBUTING.md) and [SECURITY.md](SECURITY.md) before contributing.

## Roadmap

- Expand runnable Flutter examples
- Add performance example projects
- Add a runnable anti-pattern library
- Add more ADR examples
- Add automated documentation and link validation

## Status

**Active · Flutter engineering reference · Flutter 3.35+**

## Repository

[Explore the source →](https://github.com/imsuraj024/best_practices)
