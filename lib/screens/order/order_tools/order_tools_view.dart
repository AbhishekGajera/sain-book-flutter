import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'order_tools_logic.dart';

class Order_toolsPage extends StatelessWidget {
  final logic = Get.put(Order_toolsLogic());
  //final state = Get.find<Order_toolsLogic>().state;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 12,
        ),
        importOrderButton(),
        exportOrderButton(),
      ],
    );
  }
}

importOrderButton() {
  return SizedBox(
    width: double.infinity,
    height: 45,
    child: ElevatedButton(
      style:
          ElevatedButton.styleFrom(primary: Colors.white, side: BorderSide()),
      onPressed: () {
        //controller.performLoginClick(context);
      },
      child: const Text(
        "Import Order",
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    ),
  ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
}

exportOrderButton() {
  return SizedBox(
    width: double.infinity,
    height: 45,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.green.shade700,
      ),
      onPressed: () {
        //controller.performLoginClick(context);
      },
      child: const Text(
        "Export Order Excel",
        style: TextStyle(fontSize: 16),
      ),
    ),
  ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
}
