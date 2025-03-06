import 'package:auth_using_firbase_riverpod/feathers/auth/data/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'firbase_service_test.mocks.dart';

@GenerateMocks([FirebaseAuth, User, UserCredential])
void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late MockUserCredential mockUserCredential;
  late MockUser mockUser;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockUserCredential = MockUserCredential();
    mockUser = MockUser();
  });
  group("Firbase service test", () {
    test("Signin with Email and Password should return a user", () async {
      final userModel =
          UserModel(email: "test@example.com", password: "password12233");
      when(mockUserCredential.user).thenReturn(mockUser);
      when(mockUser.email).thenReturn("test@example.com");
      when(mockUser.uid).thenReturn("12345");
      when(mockFirebaseAuth.signInWithEmailAndPassword(
              email: userModel.email, password: userModel.password))
          .thenAnswer((_) => Future.value(mockUserCredential));
      // Act
      final userCredential = await mockFirebaseAuth.signInWithEmailAndPassword(
        email: userModel.email,
        password: userModel.password,
      );
      final user = userCredential.user;

      // Assert
      expect(user, isNotNull);
      expect(user?.email, 'test@example.com');
      expect(user?.uid, '12345');
    });
  });

  test("signup with email and password should return a user", () async {
    final userModel =
        UserModel(email: "test@example.com", password: "password12233");
    when(mockUserCredential.user).thenReturn(mockUser);
    when(mockUser.email).thenReturn(userModel.email);
    when(mockUser.uid).thenReturn('67890');

    when(mockFirebaseAuth.createUserWithEmailAndPassword(
            email: userModel.email, password: userModel.password))
        .thenAnswer(((_) => Future.value(mockUserCredential)));

    final userCredential =
        await mockFirebaseAuth.createUserWithEmailAndPassword(
      email: userModel.email,
      password: userModel.password,
    );
    final user = userCredential.user;
    expect(user, isNotNull);
    expect(user?.email, userModel.email);
    expect(user?.uid, '67890');

    verify(mockFirebaseAuth.createUserWithEmailAndPassword(
            email: userModel.email, password: userModel.password))
        .called(1);
  });

  test("Signout should return null", () async {
    when(mockFirebaseAuth.signOut()).thenAnswer((_) => Future.value());
    await mockFirebaseAuth.signOut();
    verify(mockFirebaseAuth.signOut()).called(1);
  });

  test("Send password reset email should return null", () async {
    when(mockFirebaseAuth.sendPasswordResetEmail(email: "test@example.com"))
        .thenAnswer((_) => Future.value());
    await mockFirebaseAuth.sendPasswordResetEmail(email: "test@example.com");
    verify(mockFirebaseAuth.sendPasswordResetEmail(email: "test@example.com"))
        .called(1);
  });
}
