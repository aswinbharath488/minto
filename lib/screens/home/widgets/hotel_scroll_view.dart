import 'package:flutter/material.dart';
import 'package:minto/data/hotel_data.dart';
import 'package:minto/screens/home/widgets/hotel_card.dart';

class HotelScrollView extends StatelessWidget {
  const HotelScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .24,
      width: MediaQuery.of(context).size.width * .88,
      child: ListView.builder(
          itemCount: hotelData.length,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: HotelCards(
                  img: hotelData[i]["image"].toString(),
                  title: hotelData[i]["name"].toString(),
                  rating: hotelData[i]["rating"].toString()),
            );
          }),
    );
  }
}
