# Clean Architecture

Clean Architecture is useful when domain complexity or long-term change justifies explicit boundaries. It is not a requirement for every Flutter project.

## Recommended dependency direction

```text
Presentation
    ↓
Application / Domain
    ↓
Interfaces
    ↓
Data / Infrastructure
```

Dependencies should point toward stable business rules. Flutter widgets, HTTP clients, databases, and platform APIs should not become the center of the domain model.

## Suggested responsibilities

| Layer | Responsibility |
|---|---|
| Presentation | Rendering, user interaction, UI state |
| Application | Use-case orchestration and feature workflows |
| Domain | Business rules and stable contracts |
| Data | API, database, serialization, repositories |

## Avoid ceremony

Do not create a use-case class, repository interface, mapper, and domain entity for a trivial CRUD screen just because a diagram says so.

## Testability

The architecture should allow business rules to be tested without Flutter bindings, network access, or a real database.

## Trade-off

More boundaries improve isolation but increase files, abstractions, and onboarding cost. Add a boundary when it solves a real dependency, testing, or change-management problem.
