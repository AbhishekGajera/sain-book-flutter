import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/model/CustomerListModel.dart';

import '../../../themes/mythemes.dart';
import 'add_customer_logic.dart';

class Add_customerPage extends StatelessWidget {
  final controller = Get.put(Add_customerLogic());
  final state = Get.find<Add_customerLogic>().state;

  late BuildContext context;

  Add_customerPage({CustomerData? customer}) {
    if (customer!= null) {
      controller.customerName.text = customer.customerName ?? "";
      controller.customerEmail.text = customer.customerEmail ?? "";
      controller.customerMobile.text = customer.customerMobile ?? "";
      controller.customerMobile1.text = customer.customerMobile1 ?? "";
      controller.customerAddress.text = customer.customerAddress ?? "";
      controller.agencyName.text = customer.agencyName??"";
      controller.agencyMobile.text = customer.agencyMobile??"";
      controller.termsValue.value = controller.termList[int.parse(customer.termId.toString())+1];
      controller.termId = int.parse(customer.termId.toString());
      controller.customer_status_id = int.parse(customer.customerStatus.toString());
    } else {
      controller.customerName.text = "";
      controller.customerEmail.text = "";
      controller.customerMobile.text = "";
      controller.customerMobile1.text = "";
      controller.customerAddress.text = "";
      controller.agencyName.text = "";
      controller.agencyMobile.text = "";
      controller.termId = -1;
      controller.customer_status_id = -1;
      controller.termsValue.value = "Select Terms";
      controller.statusValue.value = "Select Status";
    }
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return ListView(
      children: [
        customerName(),
        customerEmail(),
        customerMobile(),
        customerMobile1(),
        customerAddress(),
        agencyName(),
        agencyMobile(),
        term(),
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

  customerMobile1() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.customerMobile1,
      decoration: Themes.textFieldDecoration(hint: "Customer Mobile1"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  customerAddress() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.customerAddress,
      decoration: Themes.textFieldDecoration(hint: "Customer Address"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  agencyName() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.agencyName,
      decoration: Themes.textFieldDecoration(hint: "Agency Name"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  agencyMobile() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.agencyMobile,
      decoration: Themes.textFieldDecoration(hint: "Agency Mobile"),
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
                  controller.setStatusValue(newValue.toString());
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

  term() {
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
                value: controller.termsValue.value,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: (newValue) {
                  controller.settermValue(newValue.toString());
                },
                items: controller.termList.map((value) {
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
          controller.performAddCostomer(context);
        },
        child: const Text(
          "Save",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }
}
