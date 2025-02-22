import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<bool> get authStatusChanges {
    return _firebaseAuth.authStateChanges().map((user) => user != null);
  }

  bool get isUserAuthorized => _firebaseAuth.currentUser != null;
}
