// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


import '../../../constants.dart';

class OrderButton extends StatelessWidget {
  final String title;
  final VoidCallback fun;
  const OrderButton({
    Key? key,
    required this.title,
    required this.fun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 300, // specific value
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                backgroundColor: primaryColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
            onPressed: fun,
            child: Text(title)));
  }
}
