import 'package:flutter_test/flutter_test.dart';
import 'package:local_state_example/main.dart';

void main() {
  testWidgets('increments local state', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: CounterPage()));

    expect(find.text('0'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });
}
