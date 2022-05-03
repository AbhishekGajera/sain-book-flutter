import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'seach_supplier_state.dart';

class Seach_supplierLogic extends GetxController {
  final Seach_supplierState state = Seach_supplierState();

  TextEditingController suppliername = TextEditingController();


  final statusValue = 'Select Status'.obs;

  List<String> statusList = [
    'Select Status',
    'Disable',
    'Enable',
    'Delete',
  ];

  void setNewValue(String value) {
    statusValue.value=value.toString();
  }

  void performSearch(BuildContext context) {

  }
}
