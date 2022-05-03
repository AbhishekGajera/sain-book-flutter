import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../themes/mythemes.dart';
import 'add_supplier_logic.dart';

class Add_supplierPage extends StatelessWidget {
  final controller = Get.put(Add_supplierLogic());


  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context=context;
    return ListView(
      children: [
        suppliername(),
        supplierCode(),
        supplierEmail(),
        supplierMobile(),
        supplierAddress(),
        State(),
        City(),
        PostCode(),
        Country(),
        status(),
        commenButton()

      ],
    );
  }

  suppliername() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.suppliername,
      decoration: Themes.textFieldDecoration(hint: "Supplier Name"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }


  supplierCode() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.suppliercode,
      decoration: Themes.textFieldDecoration(hint: "Supplier Code"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  supplierEmail() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.supplieremail,
      decoration: Themes.textFieldDecoration(hint: "Supplier Email"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }


  supplierMobile() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.suppliermobile,
      decoration: Themes.textFieldDecoration(hint: "Supplier Mobile"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  supplierAddress() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.suppelieraddress,
      decoration: Themes.textFieldDecoration(hint: "Supplier Address"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  State() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.state,
      decoration: Themes.textFieldDecoration(hint: "State"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  City() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.city,
      decoration: Themes.textFieldDecoration(hint: "City"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  PostCode() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.postcode,
      decoration: Themes.textFieldDecoration(hint: "Postcode"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  Country() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.country,
      decoration: Themes.textFieldDecoration(hint: "Country"),
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
          "Save",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

}
