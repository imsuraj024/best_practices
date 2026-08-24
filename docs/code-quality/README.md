# Code Quality

Code quality is about making behavior easy to understand, change, test, and review.

## Baseline

- Format code consistently.
- Keep analyzer warnings at zero unless an exception is documented.
- Use sound null safety rather than bypassing the type system.
- Prefer small, cohesive classes and functions.
- Name code around domain intent rather than implementation trivia.
- Keep public APIs narrow.

## Immutability

Prefer immutable value objects and state models where practical. Mutable shared state increases the number of possible states a system can enter and makes reasoning harder.

## Linting

Use the repository templates under `templates/analysis_option/` as starting points. Review lint rules against team conventions and project constraints.

## Code review questions

- Does this change have one clear responsibility?
- Is the abstraction justified by a real boundary?
- Can the behavior be tested without infrastructure?
- Does the naming communicate intent?
- Is error handling explicit?
- Does the change introduce unnecessary coupling?
- Is there a simpler implementation with the same behavior?

## Avoid

- Large utility classes with unrelated responsibilities.
- Deep nesting that hides control flow.
- Silent exception swallowing.
- Comments that merely restate code.
- Abstractions introduced only for theoretical reuse.
