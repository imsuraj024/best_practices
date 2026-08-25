import 'package:clean_architecture_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('loads profile through the repository boundary', () {
    const useCase = LoadProfile(InMemoryProfileRepository());

    expect(useCase().name, 'Flutter Engineer');
  });
}
