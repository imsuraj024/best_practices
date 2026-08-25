# Widget Test Example

Widget tests should verify user-visible behavior.

```dart
await tester.pumpWidget(const MyApp());
await tester.tap(find.text('Continue'));
await tester.pumpAndSettle();

expect(find.text('Welcome'), findsOneWidget);
```

Prefer semantic finders and observable outcomes instead of asserting private widget structure.