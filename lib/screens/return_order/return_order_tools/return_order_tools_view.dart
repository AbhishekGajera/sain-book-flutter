import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'return_order_tools_logic.dart';

class Return_order_toolsPage extends StatelessWidget {
  final controller = Get.put(Return_order_toolsLogic());
  final state = Get.find<Return_order_toolsLogic>().state;
  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return ListView(
      children: [
        SizedBox(
          height: 12,
        ),
        returnByBarcodeButton(),
      ],
    );
  }

  returnByBarcodeButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(primary: Colors.white, side: BorderSide()),
        onPressed: () {
          controller.performLoginClickReturnByBarcode(context);
        },
        child: const Text(
          "Return By Barcode",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }
}
