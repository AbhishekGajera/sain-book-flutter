import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../themes/mythemes.dart';
import 'seach_supplier_logic.dart';

class Seach_supplierPage extends StatelessWidget {
  final controller = Get.put(Seach_supplierLogic());
  final state = Get.find<Seach_supplierLogic>().state;

  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context=context;
    return ListView(
      children: [
        suppliername(),
        mobileNumber(),
        email(),
        status(),
        commenButton()
      ],
    );
  }

  suppliername() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.suppliername,
      decoration: Themes.textFieldDecoration(hint: "FirstName"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }
  mobileNumber() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.suppliername,
      decoration: Themes.textFieldDecoration(hint: "FirstName"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }
  email() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.suppliername,
      decoration: Themes.textFieldDecoration(hint: "FirstName"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  status() {
    return Obx(() {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        child: DropdownButton(
            isExpanded: true,
            underline: Container(),
            iconSize: 24,
            elevation: 16,
            value: controller.statusValue.value,
            icon: const Icon(Icons.keyboard_arrow_down),
            onChanged: (newValue) {
              controller.setNewValue(newValue.toString());
            },
            items: controller.statusList.map((value) {
              return DropdownMenuItem(
                value: value.toString(),
                child: Container(
                  child: Text(value.toString()),
                ),
              );
            }).toList())
            .marginOnly(left: 10, right: 10),
      ).marginOnly(left: 20, right: 20, top: 10);
    });
  }

  commenButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent.shade700,
        ),
        onPressed: () {
          controller.performSearch(context);
        },
        child: const Text(
          "Save",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

}


