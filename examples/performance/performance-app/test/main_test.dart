import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:performance_example/main.dart';

void main() {
  testWidgets('renders a lazily built list', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: PerformancePage()));

    expect(find.text('Item 0'), findsOneWidget);
    expect(find.text('Item 999'), findsNothing);
  });
}
