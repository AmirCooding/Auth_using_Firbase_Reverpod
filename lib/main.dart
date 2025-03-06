import 'dart:developer';

import 'package:auth_using_firbase_riverpod/auth/presentation/forget_password.dart';
import 'package:auth_using_firbase_riverpod/auth/presentation/sign_in_screen.dart';
import 'package:auth_using_firbase_riverpod/auth/presentation/sign_up_screen.dart';
import 'package:auth_using_firbase_riverpod/core/widget/custom_button.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/signin",
      routes: {
        "/signin": (context) => SignInScreen(),
        "/signup": (context) => SignUpScreen(),
        "/forgetpassword": (context) => ForgetPassword(),
        "/home": (context) => Home(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Home Screen"),
            SizedBox(height: 20),
            CustomButton(text: "Sign Out", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
