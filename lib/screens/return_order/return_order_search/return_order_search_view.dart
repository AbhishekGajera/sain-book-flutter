import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../themes/mythemes.dart';
import 'return_order_search_logic.dart';

class Return_order_searchPage extends StatelessWidget {
  final controller = Get.put(Return_order_searchLogic());
  final state = Get.find<Return_order_searchLogic>().state;
  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return ListView(
      children: [
        ordernumber(),
        trackingNumber(),
        barcodeSerialNumber(),
        orderstatusSelection(),
        loginFormDate(context),
        loginToDate(context),
        searchButton(),
        resetButton(),
      ],
    );
  }

  ordernumber() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.ordernumber,
      decoration: Themes.textFieldDecoration(hint: "Order Number"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  trackingNumber() {
    // for (var item in CourierList) {
    //   print("object");
    // }
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.trackingnumber,
      decoration: Themes.textFieldDecoration(hint: "Tracking Number"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  loginFormDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.loginfromdate,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration:
                Themes.textFieldDecoration2(hint: "From Return Order Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            print("clicked");
            selectDate(context);
          },
        ),
      ],
    ).marginOnly(
      left: 20,
      right: 20,
      top: 10,
      bottom: 10,
    );
  }

  loginToDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.loginfromdate,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration:
                Themes.textFieldDecoration2(hint: "To Return Order Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            print("clicked");
            selectDate(context);
          },
        ),
      ],
    ).marginOnly(
      left: 20,
      right: 20,
    );
  }

  DateTime selectedDate = DateTime.now();
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
    }
  }

  orderstatusSelection() {
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
                value: controller.orderstatusValue.value,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: (newValue) {
                  controller.setorderstatusType(newValue.toString());
                },
                items: controller.orderstatusList.map((value) {
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

  barcodeSerialNumber() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.customername,
      decoration: Themes.textFieldDecoration(hint: "Barcode/ Serial Number"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  searchButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent.shade700,
        ),
        onPressed: () {
          controller.performLoginClickSearch(context);
        },
        child: const Text(
          "Search",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 10);
  }

  resetButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent.shade700,
        ),
        onPressed: () {
          controller.performLoginClickreset(context);
        },
        child: const Text(
          "Reset",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 5, bottom: 20);
  }
}
