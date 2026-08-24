# Unit Testing

Unit tests should prove deterministic business behavior without Flutter bindings, real HTTP services, or databases.

## Good candidates

- Validation rules
- Calculations
- Mapping and transformations
- State transitions
- Repository behavior with controlled data sources

## Example

```dart
void main() {
  test('rejects an empty account number', () {
    expect(validateAccountNumber(''), isFalse);
  });
}
```

The test describes behavior instead of implementation details.

## Avoid

- Tests that only exercise getters and setters.
- Real network calls.
- Time-dependent tests without a controlled clock.
- Mocking every internal class when a small fake is clearer.
