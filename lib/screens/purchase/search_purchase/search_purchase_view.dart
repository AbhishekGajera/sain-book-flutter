import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../themes/mythemes.dart';
import 'search_purchase_logic.dart';

class Search_purchasePage extends StatelessWidget {
  final controller = Get.put(Search_purchaseLogic());
  final state = Get.find<Search_purchaseLogic>().state;

  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context=context;
    return ListView(
      children: [
        purchaseBillNumber(),
        suplierName(),
        fromPurchaseDate(context),
        toPurchaseDate(context),
        commenButton()
      ],
    );
  }

  purchaseBillNumber(){
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.purchase_bill_number,
      decoration: Themes.textFieldDecoration(hint: "Purchase Bill No"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  suplierName(){
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.supplier_name,
      decoration: Themes.textFieldDecoration(hint: "Supplier Name"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  fromPurchaseDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.from_purchase_date,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: Themes.textFieldDecoration2(hint: "From Purchase Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            print("clicked");
            fromPurchaseDatePopup(context,"fromPurchaseDate");
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


  toPurchaseDate(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Container(
          height: 50,
          child: TextField(
            scrollPadding: EdgeInsets.only(bottom: 40),
            controller: controller.to_purchase_date,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: Themes.textFieldDecoration2(hint: "To Purchase Date"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.date_range, color: Colors.redAccent.shade700),
          onPressed: () {
            print("clicked");
            fromPurchaseDatePopup(context,"ToPurchaseDate");
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

  Future<void> fromPurchaseDatePopup(BuildContext context, String key) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: controller.selectedPurchaseFromDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null ) {
      key=="fromPurchaseDate"?controller.purchaseFromDataSet(picked):controller.purchaseToDataSet(picked);
    }
  }

}
