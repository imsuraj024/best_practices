import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: UserPage()));

class User {
  const User(this.name);

  final String name;
}

abstract interface class UserDataSource {
  User fetchUser();
}

class FakeUserDataSource implements UserDataSource {
  const FakeUserDataSource();

  @override
  User fetchUser() => const User('Ada Lovelace');
}

class UserRepository {
  const UserRepository(this.dataSource);

  final UserDataSource dataSource;

  User getUser() => dataSource.fetchUser();
}

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    const repository = UserRepository(FakeUserDataSource());
    final user = repository.getUser();

    return Scaffold(
      appBar: AppBar(title: const Text('Networking Boundary')),
      body: Center(child: Text(user.name)),
    );
  }
}
