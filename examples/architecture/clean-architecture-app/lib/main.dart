import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Architecture Example',
      home: const ProfilePage(),
    );
  }
}

class Profile {
  const Profile(this.name);

  final String name;
}

abstract interface class ProfileRepository {
  Profile load();
}

class InMemoryProfileRepository implements ProfileRepository {
  @override
  Profile load() => const Profile('Flutter Engineer');
}

class LoadProfile {
  const LoadProfile(this.repository);

  final ProfileRepository repository;

  Profile call() => repository.load();
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final profile = const LoadProfile(InMemoryProfileRepository())();
    return Scaffold(
      appBar: AppBar(title: const Text('Architecture')),
      body: Center(child: Text(profile.name)),
    );
  }
}
