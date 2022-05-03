import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'manifest_tools_logic.dart';

class Manifest_toolsPage extends StatelessWidget {
  final controller = Get.put(Manifest_toolsLogic());
  final state = Get.find<Manifest_toolsLogic>().state;
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
        style: ElevatedButton.styleFrom(
            primary: Colors.redAccent.shade700, side: BorderSide()),
        onPressed: () {
          controller.performLoginClickCreateNewManifest(context);
        },
        child: const Text(
          "Create New Manifest",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }
}
