import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';

import 'search_customer_state.dart';

class Search_customerLogic extends GetxController {

  TextEditingController customerName = TextEditingController();
  TextEditingController customerMobile = TextEditingController();
  TextEditingController customerEmail = TextEditingController();
  final statusValue = 'Select Status'.obs;

  DioService dio = DioService();

  List<String> statusList = [
    'Select Status',
    'Enable',
    'Disable',
    'Delete'
  ];
  void performLoginClick(BuildContext context) {

  }

  void setNewValue(String value) {

  }
}
