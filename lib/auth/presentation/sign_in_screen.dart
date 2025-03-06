import 'package:auth_using_firbase_riverpod/core/widget/custom_button.dart';
import 'package:auth_using_firbase_riverpod/core/widget/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CustomTextField(
                hintText: "Enter your Email...",
                labelText: "Email",
                controller: emailController,
                prefixIcon: Icon(CupertinoIcons.mail)),
            SizedBox(height: 20),
            CustomTextField(
                hintText: "Enter your password...",
                labelText: "Password",
                controller: passwordController,
                prefixIcon: Icon(CupertinoIcons.lock)),
            SizedBox(height: 40),
            CustomButton(text: "Sign In", onPressed: () {}),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgetpassword');
                    },
                    child: Text("forget password?"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text("Sign Up"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
