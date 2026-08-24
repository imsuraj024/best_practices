# Choosing State Management

Choose the smallest mechanism that represents the state correctly.

| Scope | Starting point |
|---|---|
| Widget-local state | `StatefulWidget` |
| Small reactive value | `ValueNotifier` |
| Shared feature/application state | Riverpod or established team standard |
| Complex event-driven workflow | BLoC when explicit events/states improve clarity |

## Decision questions

1. Who owns this state?
2. How many widgets need it?
3. Does it survive navigation?
4. Does it have asynchronous side effects?
5. Does it need independent unit testing?
6. Is the team already committed to a framework?

## Anti-pattern

Do not introduce global state simply because two widgets currently need the same value. First determine whether they actually share ownership or whether a parent feature should own it.

## Testing

Test meaningful state transitions independently from rendering. Widget tests should focus on user-visible behavior.
