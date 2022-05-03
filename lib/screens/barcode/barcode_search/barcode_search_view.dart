import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/DrawerScreen.dart';

import '../../../themes/mythemes.dart';
import 'barcode_search_logic.dart';

class Barcode_searchPage extends StatelessWidget {
  final controller = Get.put(Barcode_searchLogic());
  final state = Get.find<Barcode_searchLogic>().state;

  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          barcoeNumber(),
          searchButton(),
          ShowData(),
        ],
      ),
    );
  }

  barcoeNumber() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.barcodenumber,
      decoration: Themes.textFieldDecoration(hint: "Barcode/Serial Number"),
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
          controller.performClickSearch(context);
        },
        child: const Text(
          "Search",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 10);
  }

  ShowData() {
    return Obx(() {
      return controller.product.value.data != null
          ? Container(child: Table(
        border: TableBorder.all(),
        children: [
          TableRow(children: [
            Center(
              child: Text('product_name',style: Themes.tableTitalColor,textAlign: TextAlign.center,),
            ).marginAll(7),
            Center(
              child: Text(controller.product.value.data!.productName.toString(),style: Themes.tableTitalColor,textAlign: TextAlign.center),
            ).marginAll(7),
          ]),
          TableRow(children: [
            Center(
              child: Text('catalog_name',style: Themes.tableTitalColor,textAlign: TextAlign.center,),
            ).marginAll(7),
            Center(
              child: Text(controller.product.value.data!.catalogName.toString(),style: Themes.tableTitalColor,textAlign: TextAlign.center),
            ).marginAll(7),
          ]),
          TableRow(children: [
            Center(
              child: Text('reg_date',style: Themes.tableTitalColor,textAlign: TextAlign.center,),
            ).marginAll(7),
            Center(
              child: Text(controller.product.value.data!.regDate.toString(),style: Themes.tableTitalColor,textAlign: TextAlign.center),
            ).marginAll(7),
          ]),
          TableRow(children: [
            Center(
              child: Text('modify_date',style: Themes.tableTitalColor,textAlign: TextAlign.center,),
            ).marginAll(7),
            Center(
              child: Text(controller.product.value.data!.modifyDate.toString(),style: Themes.tableTitalColor,textAlign: TextAlign.center),
            ).marginAll(7),
          ]),
          TableRow(children: [
            Center(
              child: Text('product_barcode',style: Themes.tableTitalColor,textAlign: TextAlign.center,),
            ).marginAll(7),
            Center(
              child: Text(controller.product.value.data!.productBarcode.toString(),style: Themes.tableTitalColor,textAlign: TextAlign.center),
            ).marginAll(7),
          ]),
          TableRow(children: [
            Center(
              child: Text('target_price',style: Themes.tableTitalColor,textAlign: TextAlign.center,),
            ).marginAll(7),
            Center(
              child: Text(controller.product.value.data!.targetPrice.toString(),style: Themes.tableTitalColor,textAlign: TextAlign.center),
            ).marginAll(7),
          ]),
        ],
      ),)
          : Container();
    });
  }
}
