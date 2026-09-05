import 'package:flutter_test/flutter_test.dart';
import 'package:infrastructure/infrastructure.dart';

void main() {
  test('FirebaseAuthAdapter default isAuthenticated returns false', () async {
    final adapter = FirebaseAuthAdapter();
    expect(await adapter.isAuthenticated(), isFalse);
  });
}
