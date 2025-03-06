import 'package:auth_using_firbase_riverpod/auth/data/model/user_model.dart';
import 'package:auth_using_firbase_riverpod/auth/domain/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthUsecase {
  final AuthRepository _authRepository;

  AuthUsecase(this._authRepository);

  Future<User?> signInWithEmailAndPassword(UserModel user) async {
    return await _authRepository.signInWithEmailAndPassword(user);
  }

  Future<User?> signUpWithEmailAndPassword(UserModel user) async {
    return await _authRepository.signUpWithEmailAndPassword(user);
  }

  Future<void> logout() async {
    return await _authRepository.signOut();
  }

  Future<void> sendPasswordResetEmail(String email) async {
    return await _authRepository.sendPasswordResetEmail(email);
  }
}
