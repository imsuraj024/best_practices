# Unit Test Example

A unit test should verify a deterministic rule without Flutter bindings or external services.

```dart
void main() {
  test('rejects an empty account number', () {
    expect(validateAccountNumber(''), isFalse);
  });
}
```

The test should describe observable behavior and remain independent of HTTP, databases, and platform services.