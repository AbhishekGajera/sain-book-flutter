import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'search_company_state.dart';

class SearchCompanyLogic extends GetxController {
  final SearchCompanyState state = SearchCompanyState();
  TextEditingController couriername = TextEditingController();


  var status_value = 'Select Status'.obs;
  List<String> status_list = [
    'Select Status',
    'Yes',
    'No',
  ];

  void performLoginClick(BuildContext context) {}
}
