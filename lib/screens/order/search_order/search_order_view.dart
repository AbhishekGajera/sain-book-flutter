import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../themes/mythemes.dart';
//import '../../../themes/mythemes.dart';
import 'search_order_logic.dart';

class Search_orderPage extends StatelessWidget {
  // final state = Get.find<Search_orderLogic>().state;
  final controller = Get.put(Search_orderLogic());
  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return ListView(
      children: [
        ordernumber(),
        trackingNumber(),
        loginFormDate(context),
        loginToDate(context),
        companySelection(),
        websiteSelection(),
        CourierSelection(),
        orderstatusSelection(),
        customerName(),
        customerMobile(),
        customerAddress(),
        customerEmail(),
        orderQuantity(),
        productstatusSelection(),
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
            decoration: Themes.textFieldDecoration2(hint: "Login From Date"),
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
            decoration: Themes.textFieldDecoration2(hint: "Login To Date"),
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

  companySelection() {
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
                value: controller.companyValue.value,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: (newValue) {
                  controller.setcompanyType(newValue.toString());
                },
                items: controller.companyList.map((value) {
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

  websiteSelection() {
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
                value: controller.websiteValue.value,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: (newValue) {
                  controller.setwebsiteType(newValue.toString());
                },
                items: controller.websiteList.map((value) {
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

  CourierSelection() {
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
                value: controller.CourierValue.value,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: (newValue) {
                  controller.setCourierType(newValue.toString());
                },
                items: controller.CourierList.map((value) {
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

  customerName() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.customername,
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
      controller: controller.customermobile,
      decoration: Themes.textFieldDecoration(hint: "Customer Mobile"),
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
      controller: controller.customeraddress,
      decoration: Themes.textFieldDecoration(hint: "Customer Address"),
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
      controller: controller.customeremail,
      decoration: Themes.textFieldDecoration(hint: "Customer Email"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  orderQuantity() {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            style: Themes.textFieldTextStyle,
            controller: controller.customeremail,
            decoration: Themes.textFieldDecoration(
              hint: "Min Order Quantity",
            ),
          ).marginOnly(
            left: 20,
            top: 10,
            right: 0,
            bottom: 10,
          ),
        ),
        Expanded(
          child: TextField(
            style: Themes.textFieldTextStyle,
            controller: controller.customeremail,
            decoration: Themes.textFieldDecoration(
              hint: "max Order Quantity",
            ),
          ).marginOnly(
            left: 0,
            top: 10,
            right: 20,
            bottom: 10,
          ),
        )
      ],
    );
  }

  productstatusSelection() {
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
                value: controller.productstatusValue.value,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: (newValue) {
                  controller.setproductstatusType(newValue.toString());
                },
                items: controller.productstatusList.map((value) {
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
