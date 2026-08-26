import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: GreetingPage()));

String greeting(String name) => 'Hello, $name';

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Testing')),
      body: Center(child: Text(greeting('Flutter'))),
    );
  }
}
