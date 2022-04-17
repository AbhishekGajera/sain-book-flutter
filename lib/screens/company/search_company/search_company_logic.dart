import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';

import 'search_company_state.dart';

class SearchCompanyLogic extends GetxController {
  final SearchCompanyState state = SearchCompanyState();
  TextEditingController couriername = TextEditingController();
  TextEditingController company_mobile = TextEditingController();
  TextEditingController company_email = TextEditingController();


  var status_value = 'Select Status'.obs;
  List<String> status_list = [
    'Select Status',
    'Yes',
    'No',
  ];

  DioService dio = DioService();

  void performLoginClick(BuildContext context) {

  }
}
