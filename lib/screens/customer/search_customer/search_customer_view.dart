import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../themes/mythemes.dart';
import 'search_customer_logic.dart';

class Search_customerPage extends StatelessWidget {
  final controller = Get.put(Search_customerLogic());

  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context =context;
    return ListView(
      children: [
        customerName(),
        customerMobile(),
        customerEmail(),
        status(),
        commenButton()
      ],
    );
  }

  customerName() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.customerName,
      decoration: Themes.textFieldDecoration(hint: "Customer Name"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  customerMobile() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.customerMobile,
      decoration: Themes.textFieldDecoration(hint: "Customer Mobile"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  customerEmail() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.customerEmail,
      decoration: Themes.textFieldDecoration(hint: "Customer Email"),
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
          controller.performLoginClick(context);
        },
        child: const Text(
          "Search",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }




}
