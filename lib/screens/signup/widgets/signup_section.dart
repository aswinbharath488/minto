import 'package:flutter/material.dart';
import 'package:minto/screens/login/screen/login_screen.dart';
import 'package:minto/screens/login/widgets/login_button.dart';
import 'package:minto/screens/signup/widgets/sign_field.dart';

class SignUpSection extends StatelessWidget {
  const SignUpSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60))),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 60,
              ),
              const SignUpFormField(),
              const SizedBox(
                height: 40,
              ),
              const CustomButton(
                title: "Sign Up",
              ),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text(
                    "already have an account?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
