import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../themes/mythemes.dart';
import 'search_payment_logic.dart';

class Search_paymentPage extends StatelessWidget {
  final controller = Get.put(Search_paymentLogic());
  final state = Get.find<Search_paymentLogic>().state;

  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context =context;
    return ListView(
      children: [
        orderNumber(),
        trackingNumber(),
        company(),
        fromOrderDate(context),
        toOrderDate(context),
        fromPaymentDate(context),
        toPaymentDate(context),
        paymentFileNumber(),
        commenButton()

      ],
    );
  }

  orderNumber() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.order_number,
      decoration: Themes.textFieldDecoration(hint: "Order Number"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  trackingNumber() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.tracking_number,
      decoration: Themes.textFieldDecoration(hint: "Tracking Number"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  paymentFileNumber() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.payment_file_number,
      decoration: Themes.textFieldDecoration(hint: "File Number"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }





  company() {
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
                value: controller.company_name.value,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: (newValue) {
                  controller.setUserType(newValue.toString());
                },
                items: controller.company_list.map((value) {
                  return DropdownMenuItem(
                    value: value.toString(),
                    child: Container(
                      child: Text(value.toString()),
                    ),
                  );
                }).toList())
            .marginOnly(left: 10, right: 10),
      ).marginOnly(left: 20, right: 20, top: 5);
    });
  }

  fromOrderDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.fromOrderDate,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: Themes.textFieldDecoration2(hint: "From Order Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            fromOrderDatePopup(context);
          },
        ),
      ],
    ).marginOnly(
      left: 20,
      right: 20,
      top: 5,
      bottom: 5,
    );
  }



  toOrderDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.toOrderDate,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: Themes.textFieldDecoration2(hint: "To Order Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            toOrderDatePopup(context);
          },
        ),
      ],
    ).marginOnly(
      left: 20,
      right: 20,
      top: 5,
      bottom: 5,
    );
  }


  fromPaymentDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.fromPaymentDate,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: Themes.textFieldDecoration2(hint: "From Payment Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            FromPaymentDatePopup(context);
          },
        ),
      ],
    ).marginOnly(
      left: 20,
      right: 20,
      top: 5,
      bottom: 5,
    );
  }


  toPaymentDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.toPaymentDate,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: Themes.textFieldDecoration2(hint: "To Payment Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            toPaymentDatePopup(context);
          },
        ),
      ],
    ).marginOnly(
      left: 20,
      right: 20,
      top: 5,
      bottom: 5,
    );
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
          "Search",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }


  Future<void> fromOrderDatePopup(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: controller.selectedLoginFromDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != controller.selectedLoginFromDate) {
      controller.loginFromDateSet(picked);
    }
  }

  Future<void> toOrderDatePopup(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: controller.selectedLoginFromDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != controller.selectedLoginFromDate) {
      controller.loginToDateSet(picked);
    }
  }

  Future<void> toPaymentDatePopup(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: controller.selectedLoginFromDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != controller.selectedLoginFromDate) {
      controller.ToPaymentDateSet(picked);
    }
  }

  Future<void> FromPaymentDatePopup(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: controller.selectedLoginFromDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != controller.selectedLoginFromDate) {
      controller.FromPaymentDateSet(picked);
    }
  }



}
