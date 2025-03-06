import 'package:auth_using_firbase_riverpod/core/widget/custom_button.dart';
import 'package:auth_using_firbase_riverpod/core/widget/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Forget Password Screen"),
            SizedBox(height: 40),
            CustomTextField(
                hintText: "Enter your Email...",
                labelText: "Email",
                controller: controller,
                prefixIcon: Icon(CupertinoIcons.mail)),
            SizedBox(height: 40),
            CustomButton(text: "Send Email", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
