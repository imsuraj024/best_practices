# Local State Example

Use widget-owned state when the state has no reason to exist outside the widget or feature boundary.

```dart
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => setState(() => count++),
      child: Text('$count'),
    );
  }
}
```

Do not move this state into global application state unless another part of the application genuinely owns or consumes it.