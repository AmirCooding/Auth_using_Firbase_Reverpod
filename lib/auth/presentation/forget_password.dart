import 'package:auth_using_firbase_riverpod/core/widget/custom_button.dart';
import 'package:auth_using_firbase_riverpod/core/widget/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forget Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            CustomTextField(
                hintText: "Enter your Email...",
                labelText: "Email",
                controller: controller,
                prefixIcon: Icon(CupertinoIcons.mail)),
            SizedBox(height: 30),
            CustomButton(text: "Send Email", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
