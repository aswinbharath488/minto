import 'package:flutter/material.dart';
import 'package:minto/screens/booking/widgets/booking_button.dart';
import 'package:minto/screens/booking/widgets/booking_items.dart';
import 'package:minto/screens/booking/widgets/selection_grid.dart';
import 'package:minto/screens/home/screens/home_screen.dart';

import '../../../constants.dart';

class TableBooking extends StatefulWidget {
  const TableBooking({Key? key}) : super(key: key);

  @override
  State<TableBooking> createState() => _TableBookingState();
}

class _TableBookingState extends State<TableBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: (() => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()))),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        elevation: 0,
        title: const Text("Select Table"),
      ),
      body: Column(
        children: const [
          BookingItems(),
          SelectionGrid(),
          BookingButton(),
        ],
      ),
    );
  }
}
