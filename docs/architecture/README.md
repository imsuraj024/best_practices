# Architecture

Architecture should make change easier, not create ceremony.

## Recommended default

For most medium and large Flutter applications, prefer **feature-first organization** with clear boundaries between presentation, application/domain logic, and data access where complexity justifies the separation.

```text
lib/
├── app/
├── core/
└── features/
    ├── authentication/
    │   ├── presentation/
    │   ├── application/
    │   ├── domain/
    │   └── data/
    └── payments/
        ├── presentation/
        ├── application/
        ├── domain/
        └── data/
```

## Decision rules

- Small application: avoid unnecessary layers.
- Growing application: establish feature boundaries early.
- Complex domain: isolate domain rules from Flutter and infrastructure.
- Existing production application: preserve working conventions unless migration has a clear benefit.

## Avoid

- Business logic embedded in widgets.
- A global `utils` folder containing unrelated business logic.
- Repositories that become untestable service containers.
- Adding Clean Architecture layers without a real complexity problem.

## Next guides

- Feature-first vs layer-first
- Dependency injection
- Repository boundaries
- Architecture decision records
