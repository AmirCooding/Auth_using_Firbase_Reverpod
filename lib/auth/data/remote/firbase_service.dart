import 'package:auth_using_firbase_riverpod/auth/data/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  final FirebaseAuth firebaseAuth;
  FirebaseService(this.firebaseAuth);

  Future<User?> signInWithEmailAndPassword(UserModel user) async {
    try {
      final UserCredential userCredential =
          await firebaseAuth.signInWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<User?> signUpWithEmailAndPassword(UserModel user) async {
    try {
      final UserCredential userCredential =
          await firebaseAuth.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  Future<User?> getCurrentUser() async {
    return firebaseAuth.currentUser;
  }
}
