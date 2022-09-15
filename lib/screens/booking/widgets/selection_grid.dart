import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class SelectionGrid extends StatefulWidget {
  const SelectionGrid({Key? key}) : super(key: key);

  @override
  State<SelectionGrid> createState() => _SelectionGridState();
}

class _SelectionGridState extends State<SelectionGrid> {
  static var rowCount = 3.obs;
  late RxList seatIndex = [1, 5, 6].obs;
  static var userSize = 1.0.obs;
  static var roomNos = 9.obs;

  final designKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return RepaintBoundary(
      key: designKey,
      child: Container(
        width: size.width * .99,
        height: size.width * .99,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Obx(
                () => GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: rowCount.value,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (_, index) => Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () {
                        if (!seatIndex.contains(index)) {
                          seatIndex.add(
                            index,
                          );
                        } else {
                          seatIndex.removeWhere(
                            (element) => element == index,
                          );
                        }
                        seatIndex.refresh();
                        if (!seatIndex.contains(index)) {}
                      },
                      child: Obx(
                        () => Transform.scale(
                          scale: userSize.value,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: secondaryColor,
                            ),
                            child: seatIndex.contains(index)
                                ? Image.asset(
                                    'assets/seats/table2_selected.png')
                                : Image.asset("assets/seats/table2.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  itemCount: roomNos.value,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
