import 'package:flutter/material.dart';
import 'package:minto/screens/login/widgets/login_button.dart';
import 'package:minto/screens/login/widgets/login_form.dart';
import 'package:minto/screens/signup/screens/signup_screen.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({Key? key}) : super(key: key);

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
            children: [
              const SizedBox(
                height: 60,
              ),
              const LoginFormField(),
              const SizedBox(
                height: 40,
              ),
              const CustomButton(
                title: "Login",
              ),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  },
                  child: const Text(
                    "Dont have an Account?",
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
