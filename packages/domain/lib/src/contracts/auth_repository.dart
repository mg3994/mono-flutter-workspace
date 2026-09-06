import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Stream<User?> get authStateChanges;

  Future<UserCredential?> signInWithEmail({
    required String email,
    required String password,
  });

  Future<void> signOut();
}
