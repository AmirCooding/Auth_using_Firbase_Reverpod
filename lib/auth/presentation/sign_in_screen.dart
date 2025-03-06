import 'package:auth_using_firbase_riverpod/core/widget/custom_button.dart';
import 'package:auth_using_firbase_riverpod/core/widget/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign In Screen"),
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
            Row(
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
                    Navigator.pushNamed(context, '/signUp');
                  },
                  child: Text("Sign Up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
