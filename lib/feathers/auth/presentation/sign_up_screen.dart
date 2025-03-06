import 'package:auth_using_firbase_riverpod/core/widget/custom_button.dart';
import 'package:auth_using_firbase_riverpod/core/widget/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                  labelText: "Confirm Password",
                  controller: confirmPasswordController,
                  prefixIcon: Icon(CupertinoIcons.lock)),
              SizedBox(height: 30),
              CustomButton(text: "Sign up", onPressed: () {}),
            ])));
  }
}
