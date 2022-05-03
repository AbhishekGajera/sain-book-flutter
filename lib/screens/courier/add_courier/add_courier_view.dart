import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/model/CourierListModel.dart';

import '../../../themes/mythemes.dart';
import 'add_courier_logic.dart';

class AddCourierPage extends StatelessWidget {
  final controller = Get.put(AddCourierLogic());
  final state = Get.find<AddCourierLogic>().state;

  late BuildContext context;

  AddCourierPage({Data? courier}){
    if(courier!=null){
      controller.couriername.text = courier.courierName!;
      controller.courierWebsite.text =courier.courierWebsite!;
      controller.rate.text = courier.rate!;
      controller.codid = int.parse(courier.cod.toString());
      controller.courierstatusid = int.parse(courier.courierStatus.toString());
      controller.statusValue.value = courier.courierStatus.toString()=="1"?"Enable":"Disable";
      controller.code_value.value = courier.cod.toString()=="1"?"Yes":"No";
    }else{
      controller.couriername.text ="";
      controller.courierWebsite.text = "";
      controller.rate.text = "";
      controller.codid = -1;
      controller.courierstatusid = -1;
      controller.statusValue.value = "Select Status";
      controller.code_value.value = "Select COD Status";
    }

  }
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return ListView(
      children: [
        courierName(),
        courierWebsites(),
        codStatus(),
        rate(),
        status(),
        commenButton()
      ],
    );
  }

  courierName() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.couriername,
      decoration: Themes.textFieldDecoration(hint: "Courier Name"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  courierWebsites() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.courierWebsite,
      decoration: Themes.textFieldDecoration(hint: "Courier Website"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  rate() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.rate,
      decoration: Themes.textFieldDecoration(hint: "Rate"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }


  codStatus() {
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
            value: controller.code_value.value,
            icon: const Icon(Icons.keyboard_arrow_down),
            onChanged: (newValue) {
              controller.setCodStatus(newValue.toString());
            },
            items: controller.codStatus.map((value) {
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
              controller.courierStatus(newValue.toString());

            },
            items: controller.status.map((value) {
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
          controller.performAddCurier(context);
        },
        child: const Text(
          "Save",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }
}
