# Dependency Injection

Dependency injection makes dependencies explicit and lets tests replace infrastructure with controlled implementations.

## Rules

- Depend on abstractions when substitution has real value.
- Keep object creation at composition boundaries.
- Do not hide important dependencies in global singletons.
- Prefer constructor injection for ordinary classes.
- Keep service locators at the edge when they are unavoidable.

## Example

```dart
class UserRepository {
  UserRepository(this.remoteDataSource);

  final UserRemoteDataSource remoteDataSource;
}
```

The repository does not need to know how `UserRemoteDataSource` was constructed.

## Testing

```dart
final repository = UserRepository(FakeUserRemoteDataSource());
```

The test controls the dependency without changing production logic.

## Anti-pattern

A class that reaches into a global locator, constructs its HTTP client, database, logger, and configuration internally is difficult to isolate and reason about.
