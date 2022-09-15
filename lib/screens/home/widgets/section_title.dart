import 'package:flutter/material.dart';

import 'package:minto/constants.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, letterSpacing: .2),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "see all",
                style: TextStyle(fontSize: 17, color: textColor),
              ))
        ],
      ),
    );
  }
}
