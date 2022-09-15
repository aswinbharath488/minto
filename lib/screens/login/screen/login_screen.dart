import 'package:flutter/material.dart';
import 'package:minto/constants.dart';
import 'package:minto/screens/login/widgets/login_section.dart';
import 'package:minto/screens/login/widgets/login_title.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              title: "Login",
              subtitle: "Welcome Back",
            ),
            SizedBox(height: 20),
            Expanded(child: LoginSection())
          ],
        ),
      ),
    );
  }
}
