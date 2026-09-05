import 'package:domain/domain.dart';

/// Adapter fulfilling pure domain auth contracts using infrastructure services.
class FirebaseAuthAdapter implements IAuthContract {
  @override
  Future<bool> isAuthenticated() async {
    return false;
  }
}
