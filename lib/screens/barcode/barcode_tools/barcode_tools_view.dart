import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'barcode_tools_logic.dart';

class Barcode_toolsPage extends StatelessWidget {
  final controller = Get.put(Barcode_toolsLogic());
  final state = Get.find<Barcode_toolsLogic>().state;
  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return ListView(
      children: [
        SizedBox(
          height: 12,
        ),
        addNewBArcodeButton(),
      ],
    );
  }

  addNewBArcodeButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(primary: Colors.white, side: BorderSide()),
        onPressed: () {
          controller.performaddNewBArcodeClick(context);
        },
        child: const Text(
          "Add New Barcode",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }
}
