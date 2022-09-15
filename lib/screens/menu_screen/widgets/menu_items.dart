import 'package:flutter/material.dart';
import 'package:minto/screens/home/widgets/section_title.dart';

import '../../../constants.dart';

class MenuItems extends StatefulWidget {
  const MenuItems({Key? key}) : super(key: key);

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  final vegfood = [
    FoodItem(text: 'Curry'),
    FoodItem(text: 'Vegan Yellow Curry'),
    FoodItem(text: 'Potato Curry'),
    FoodItem(text: 'Paneer'),
  ];
  final nonVegfood = [
    FoodItem(text: 'Butter Chicken Curry'),
    FoodItem(text: 'Chicken Curry'),
    FoodItem(text: 'Fish Mango Curry'),
    FoodItem(text: 'Curry'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: MediaQuery.of(context).size.height * .75,
      width: MediaQuery.of(context).size.width * .85,
      child: ListView(children: [
        const SectionTile(title: "Veg-items"),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(
            height: 1,
            thickness: 2,
          ),
        ),
        ...vegfood.map((customCheckListTile)).toList(),
        const SectionTile(title: "Non-Veg-items"),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(
            height: 1,
            thickness: 2,
          ),
        ),
        ...nonVegfood.map((customCheckListTile)).toList()
      ]),
    );
  }

  Widget customCheckListTile(FoodItem food) {
    return CheckboxListTile(
        activeColor: primaryColor,
        title: Text(
          food.text,
          style: const TextStyle(fontSize: 16),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        value: food.value,
        onChanged: (value) {
          setState(() {
            food.value = value!;
          });
        });
  }
}

//food item model
class FoodItem {
  String text;
  bool value;

  FoodItem({
    required this.text,
    this.value = false,
  });
}
