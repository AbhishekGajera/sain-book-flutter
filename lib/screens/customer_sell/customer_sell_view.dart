import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '../../model/AddCustomerModel.dart';
import '../../model/CustomerListModel.dart';
import '../../themes/mythemes.dart';
import '../DrawerScreen.dart';
import 'customer_sell_logic.dart';

class Customer_sellPage extends StatelessWidget {
  final controller = Get.put(Customer_sellLogic());
  final state = Get.find<Customer_sellLogic>().state;

  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    controller.getcustomerList(context, "");
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: [
          billNumber(),
          customerName(),
          fromDueDate(context),
          toDueDate(context),
          customerlist(context),
          paymentRecieve(),
          search()
        ],
      ),
    );
  }

  billNumber() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.billNumber,
      decoration: Themes.textFieldDecoration(hint: "Bill No"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
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

  fromDueDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.fromduedate,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: Themes.textFieldDecoration2(hint: "From Due Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            fromDueDatePopup(context, "From Due Date");
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

  toDueDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.toduedate,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: Themes.textFieldDecoration2(hint: "To Due Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            fromDueDatePopup(context, "To Due Date");
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

  Future<void> fromDueDatePopup(BuildContext context, String s) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (s == "From Due Date") {
      controller.loginFromDateSet(picked!);
    } else {
      controller.loginToDateSet(picked!);
    }
  }


  customerlist(BuildContext context) {
    return Obx(() {
      return DropdownSearch<CustomerData>(
        mode: Mode.MENU,
        items: controller.customer_list_model.value.data,
        itemAsString: (CustomerData? data) => data!.customerName.toString(),
        dropdownSearchDecoration:
        Themes.textFieldDecoration(hint: "Customer"),
        onChanged: (CustomerData? value) {
          controller.selectCustomerValue(value!);
        },
        showSearchBox: true,
      ).marginOnly(
        left: 20,
        top: 10,
        right: 20,
        bottom: 10,
      );
    });
  }


  paymentRecieve() {
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
                value: controller.paymentrecieveValue.value,
                icon: const Icon(Icons.keyboard_arrow_down),
                onChanged: (newValue) {
                  controller.paymentrecieveValue.value = newValue.toString();
                },
                items: controller.paymentRecieveList.map((value) {
                  return DropdownMenuItem(
                    value: value.toString(),
                    child: Container(
                      child: Text(value.toString()),
                    ),
                  );
                }).toList())
            .marginOnly(left: 10, right: 10),
      ).marginOnly(left: 20, right: 20);
    });
  }

  search() {
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

  getData(String filter) {

  }

}
