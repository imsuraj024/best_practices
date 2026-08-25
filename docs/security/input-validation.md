# Input Validation

Treat all external input as untrusted, including user input, deep links, push notification payloads, local files, and API responses.

## Validation strategy

```text
Raw input
   ↓
Parse
   ↓
Validate shape
   ↓
Validate business constraints
   ↓
Use typed value
```

## Rules

- Validate required fields and formats.
- Apply domain constraints in business logic, not only in widgets.
- Return structured validation failures.
- Normalize values where the domain requires it.
- Do not rely on client validation as the only server-side protection.

## Avoid

- Trusting values because they came from your own UI.
- Duplicating complex validation rules inconsistently across screens.
- Displaying raw server error payloads to users.
