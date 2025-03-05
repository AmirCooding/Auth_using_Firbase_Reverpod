import 'package:auth_using_firbase_riverpod/auth/data/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<User?> signInWithEmailAndPassword(UserModel user);

  Future<User?> signUpWithEmailAndPassword(UserModel user);

  Future<void> signOut();
}
