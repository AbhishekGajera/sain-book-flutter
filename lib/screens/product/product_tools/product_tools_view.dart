import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'product_tools_logic.dart';

class Product_toolsPage extends StatelessWidget {
  final controller = Get.put(Product_toolsLogic());
  final state = Get.find<Product_toolsLogic>().state;
  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return ListView(
      children: [
        SizedBox(
          height: 12,
        ),
        importProductButton(),
        addNewProductButton(),
        exportProductExcelButton(),
        importPurchasePriceButton(),
        bulkGenerateBarcodeButton(),
      ],
    );
  }

  importProductButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent.shade700,
        ),
        onPressed: () {
          //controller.performLoginClick(context);
        },
        child: const Text(
          "Import Product",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  addNewProductButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent.shade700,
        ),
        onPressed: () {
          controller.performOnClickaddNewProductButton(context);
        },
        child: const Text(
          "Add New Product",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  exportProductExcelButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent.shade700,
        ),
        onPressed: () {
          controller.performOnClickexportProductExcelButton(context);
        },
        child: const Text(
          "Export product Excel",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  importPurchasePriceButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent.shade700,
        ),
        onPressed: () {
          controller.performOnClickimportPurchasePriceButton(context);
        },
        child: const Text(
          "Import Purchase Price",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }

  bulkGenerateBarcodeButton() {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent.shade700,
        ),
        onPressed: () {
          controller.performOnClickbulkGenerateBarcodeButton(context);
        },
        child: const Text(
          "Bulk Generator Barcode",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    ).marginOnly(left: 20, right: 20, top: 10, bottom: 20);
  }
}
