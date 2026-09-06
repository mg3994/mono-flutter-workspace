import 'package:firebase_core/firebase_core.dart';

abstract class FirebaseInitializer {
  Future<FirebaseApp?> initialize();
}

class DefaultFirebaseInitializer implements FirebaseInitializer {
  @override
  Future<FirebaseApp?> initialize() async {
    return null;
  }
}
