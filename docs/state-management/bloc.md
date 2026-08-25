# BLoC Guidance

BLoC is useful when explicit events, state transitions, and predictable asynchronous workflows improve clarity.

## Recommended practices

- Keep events meaningful to user or domain actions.
- Keep states focused on observable behavior.
- Keep business rules outside widgets.
- Avoid one giant BLoC owning an entire application.
- Keep side effects and external dependencies behind testable boundaries.

## When BLoC is a poor fit

For a single toggle, text field, or small local interaction, a full event/state architecture usually adds unnecessary ceremony.

## Testing

Test event-to-state behavior independently. Cover success, failure, cancellation, and repeated events where those states matter to the product.
