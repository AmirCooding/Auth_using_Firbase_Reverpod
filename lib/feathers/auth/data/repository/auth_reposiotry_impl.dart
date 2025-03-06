import 'package:auth_using_firbase_riverpod/feathers/auth/data/model/user_model.dart';
import 'package:auth_using_firbase_riverpod/feathers/auth/data/remote/firbase_service.dart';
import 'package:auth_using_firbase_riverpod/feathers/auth/domain/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthReposiotryImpl extends AuthRepository {
  final FirebaseService firebaseService;
  AuthReposiotryImpl({required this.firebaseService});
  @override
  Future<User?> signInWithEmailAndPassword(UserModel user) {
    return firebaseService.signInWithEmailAndPassword(user);
  }

  @override
  Future<void> signOut() {
    return firebaseService.signOut();
  }

  @override
  Future<User?> signUpWithEmailAndPassword(UserModel user) {
    return firebaseService.signUpWithEmailAndPassword(user);
  }

  @override
  Future<void> sendPasswordResetEmail(String email) {
    return firebaseService.sendPasswordResetEmail(email);
  }
}
