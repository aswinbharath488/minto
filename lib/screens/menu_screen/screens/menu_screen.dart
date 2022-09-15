import 'package:flutter/material.dart';
import 'package:minto/constants.dart';
import 'package:minto/screens/menu_screen/screens/thank_you_screen.dart';
import 'package:minto/screens/menu_screen/widgets/order_button.dart';

import '../widgets/menu_items.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.help))]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Odrer your Food",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const MenuItems(),
                OrderButton(
                  title: "Order",
                  fun: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ThankYouPage()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
