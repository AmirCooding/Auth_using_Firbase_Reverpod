import 'package:auth_using_firbase_riverpod/core/widget/custom_button.dart';
import 'package:auth_using_firbase_riverpod/core/widget/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          const Text('Sign Up Screen'),
          SizedBox(height: 40),
          CustomTextField(
              hintText: "Enter email...",
              labelText: "Email",
              controller: emailController,
              prefixIcon: Icon(CupertinoIcons.mail)),
          SizedBox(height: 20),
          CustomTextField(
              hintText: "Enter Password...",
              labelText: "Password",
              controller: passwordController,
              prefixIcon: Icon(CupertinoIcons.lock)),
          SizedBox(height: 20),
          CustomTextField(
              hintText: "Confirm Password...",
              labelText: "confirm password",
              controller: confirmPasswordController,
              prefixIcon: Icon(CupertinoIcons.lock)),
          SizedBox(height: 30),
          CustomButton(text: "Sign up", onPressed: () {}),
        ])));
  }
}
