import 'package:domain/domain.dart';

/// Abstract contract for Firebase Auth integration.
abstract class FirebaseAuthContract {
  Future<bool> isAuthenticated();
}

/// Adapter fulfilling pure domain auth contracts using infrastructure services.
class FirebaseAuthAdapter implements FirebaseAuthContract {
  @override
  Future<bool> isAuthenticated() async {
    return false;
  }
}
