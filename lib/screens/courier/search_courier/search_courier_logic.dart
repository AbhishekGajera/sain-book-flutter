import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'search_courier_state.dart';

class SearchCourierLogic extends GetxController {
  final SearchCourierState state = SearchCourierState();
  TextEditingController couriername = TextEditingController();

  var code_value = 'Select COD Status'.obs;
  List<String> codStatus = [
    'Select COD Status',
    'Yes',
    'No',
  ];

  var statusValue = 'Select Status'.obs;
  List<String> status = [
    'Select Status',
    'Enable',
    'Disable',
    'Delete',
  ];

  void performLoginClick(BuildContext context) {



  }
}
