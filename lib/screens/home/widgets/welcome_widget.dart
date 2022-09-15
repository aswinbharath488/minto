import 'package:flutter/material.dart';
import 'package:minto/constants.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(left: 15, top: 10),
      child: RichText(
          text: const TextSpan(
              text: "Hungry?\n",
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: .3),
              children: [
            TextSpan(
                text: "Order & Eat",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 27))
          ])),
    );
  }
}
