import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_example/main.dart';

void main() {
  test('greeting is deterministic', () {
    expect(greeting('Flutter'), 'Hello, Flutter');
  });

  testWidgets('page renders user-visible greeting', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: GreetingPage()));

    expect(find.text('Hello, Flutter'), findsOneWidget);
  });
}
