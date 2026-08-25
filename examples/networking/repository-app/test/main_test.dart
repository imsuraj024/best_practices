import 'package:flutter_test/flutter_test.dart';
import 'package:repository_networking_example/main.dart';

void main() {
  test('repository hides data-source details', () {
    const repository = UserRepository(FakeUserDataSource());

    expect(repository.getUser().name, 'Ada Lovelace');
  });
}
