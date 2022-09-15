// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:minto/constants.dart';
import 'package:minto/screens/booking/screens/show_table.dart';

class HotelCards extends StatelessWidget {
  final String img;
  final String title;
  final String rating;
  const HotelCards({
    Key? key,
    required this.img,
    required this.title,
    required this.rating,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const TableBooking())),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 3,
          child: Container(
            height: 210,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          img,
                        )),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10, right: 5),
                  child: Row(
                    children: [
                      Text(
                        rating,
                        style: const TextStyle(color: secondaryColor),
                      ),
                      const Icon(
                        Icons.star,
                        size: 17,
                        color: secondaryColor,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
