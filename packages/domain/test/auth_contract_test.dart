import 'package:test/test.dart';
import 'package:domain/domain.dart';

class FakeAuthAdapter implements IAuthContract {
  @override
  Future<bool> isAuthenticated() async => true;
}

void main() {
  test('IAuthContract fake implementation test', () async {
    final contract = FakeAuthAdapter();
    expect(await contract.isAuthenticated(), isTrue);
  });
}
