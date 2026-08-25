# Feature-First Architecture

## Recommendation

Organize production Flutter applications around business capabilities rather than technical layers.

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

## Why

Feature boundaries keep related code together and make ownership, testing, and future extraction easier. They also reduce the tendency for unrelated features to depend on each other's implementation details.

## When to simplify

A small application does not need four layers per feature. Start with the smallest structure that keeps responsibilities clear.

## Anti-pattern

```text
lib/
├── screens/
├── widgets/
├── models/
├── services/
├── repositories/
└── utils/
```

This structure can work initially but often turns into a global bucket where unrelated feature code becomes coupled.

## Review checklist

- [ ] A feature owns its UI and behavior.
- [ ] Cross-feature dependencies are deliberate.
- [ ] Infrastructure details do not leak into presentation.
- [ ] Shared code is genuinely shared rather than merely convenient.
