import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/DrawerScreen.dart';

import '../../../model/CompanyListModel.dart';
import '../../../themes/mythemes.dart';
import 'product_search_logic.dart';

class Product_searchPage extends StatelessWidget {
  final controller = Get.put(Product_searchLogic());
  final state = Get.find<Product_searchLogic>().state;
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    controller.getCompanyList(context);
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: [
          productsku(),
          location(),
          targetPrice(),
          Quantity(),
          FormDate(context),
          ToDate(context),
          productstatusSelection(),
          companySelection(),
          searchButton(),
        ],
      ),
    );
  }

  productsku() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.productsku,
      decoration: Themes.textFieldDecoration(hint: "Product SKU"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  location() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.location,
      decoration: Themes.textFieldDecoration(hint: "Tracking Number"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  FormDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.fromdate,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: Themes.textFieldDecoration2(hint: "From Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            print("clicked");
            selectDate(context,"From Date");
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

  ToDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.todate,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: Themes.textFieldDecoration2(hint: "To Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            print("clicked");
            selectDate(context,"To Date");
          },
        ),
      ],
    ).marginOnly(
      left: 20,
      right: 20,
    );
  }

  DateTime currentDate = DateTime.now();
  Future<void> selectDate(BuildContext context, String flag) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null) {
      if(flag == "To Date"){
        controller.changeToDate(picked);
      }else{
        controller.chageFromDate(picked);
      }
    }
  }

  companySelection() {
      return Obx(() {
        return DropdownSearch<Data>(
          mode: Mode.MENU,
          items: controller.companylist.value.data,
          itemAsString: (Data? data) => data!.companyName.toString(),
          dropdownSearchDecoration:
          Themes.textFieldDecoration(hint: "Customer"),
          onChanged: (Data? value) {
            controller.selectedCompanyValue(value!);
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

  targetPrice() {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            style: Themes.textFieldTextStyle,
            controller: controller.mintargetprice,
            decoration: Themes.textFieldDecoration(
              hint: "Min Target Price",
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
            controller: controller.maxtargetprice,
            decoration: Themes.textFieldDecoration(
              hint: "max Target price",
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

  Quantity() {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            style: Themes.textFieldTextStyle,
            controller: controller.minquantity,
            decoration: Themes.textFieldDecoration(
              hint: "Min",
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
            controller: controller.maxquantity,
            decoration: Themes.textFieldDecoration(
              hint: "max",
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

}
