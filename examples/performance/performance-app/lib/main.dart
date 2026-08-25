import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: PerformancePage()));

class PerformancePage extends StatelessWidget {
  const PerformancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Performance')),
      body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) => ListTile(
          key: ValueKey(index),
          title: Text('Item $index'),
        ),
      ),
    );
  }
}
