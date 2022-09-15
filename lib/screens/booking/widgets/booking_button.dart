import 'package:flutter/material.dart';
import 'package:minto/screens/menu_screen/screens/menu_screen.dart';

import '../../../constants.dart';

class BookingButton extends StatelessWidget {
  const BookingButton({Key? key}) : super(key: key);

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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MenuScreen()));
            },
            child: const Text('Book')));
  }
}
