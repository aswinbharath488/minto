import 'package:flutter/material.dart';
import 'package:minto/screens/login/widgets/login_title.dart';
import 'package:minto/screens/signup/widgets/signup_section.dart';

import '../../../constants.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          primaryColor,
          secondaryColor,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 80,
            ),
            TitleTile(
              title: "Sign Up",
              subtitle: "Create Your Account",
            ),
            SizedBox(height: 20),
            Expanded(child: SignUpSection())
          ],
        ),
      ),
    );
  }
}
