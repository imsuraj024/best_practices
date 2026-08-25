# State Management

Choose state management based on the scope and behavior of the state, not popularity.

## Default decision guide

| State | Starting point |
|---|---|
| Widget-only state | `StatefulWidget` |
| Small reactive local state | `ValueNotifier` |
| Shared feature/application state | Riverpod or the project's established solution |
| Complex event-driven workflow | BLoC when explicit events and states improve clarity |

## Rules

- Keep local state local when possible.
- Separate loading, success, empty, and error states.
- Do not make every value global.
- Keep side effects outside presentation widgets.
- Make state transitions deterministic and testable.

## Anti-patterns

- One global controller for unrelated features.
- API calls directly from presentation code.
- State objects that expose mutable collections.
- Rebuilding large widget trees for tiny state changes.

## Testing

Test state transitions independently from widgets whenever practical. Widget tests should verify user-visible behavior rather than implementation details.
