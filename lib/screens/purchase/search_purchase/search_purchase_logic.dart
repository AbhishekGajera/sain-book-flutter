import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../other/Constants.dart';
import 'search_purchase_state.dart';

class Search_purchaseLogic extends GetxController {
  final Search_purchaseState state = Search_purchaseState();

  TextEditingController purchase_bill_number = TextEditingController()..text = "";
  TextEditingController supplier_name = TextEditingController()..text = "";
  TextEditingController from_purchase_date = TextEditingController()..text = "";
  TextEditingController to_purchase_date = TextEditingController()..text = "";
  DateTime selectedPurchaseFromDate = DateTime.now();
  DateTime selectedPurchaseToDate = DateTime.now();

  void purchaseFromDataSet(DateTime picked) {
    selectedPurchaseFromDate = picked;
    from_purchase_date.text = "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  void purchaseToDataSet(DateTime picked) {
    selectedPurchaseToDate = picked;
    to_purchase_date.text = "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  void performSearch(BuildContext context) {}
}
