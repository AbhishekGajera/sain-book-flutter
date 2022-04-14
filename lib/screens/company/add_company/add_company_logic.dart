import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_company_state.dart';

class AddCompanyLogic extends GetxController {
  final AddCompanyState state = AddCompanyState();
  TextEditingController company_name = TextEditingController();
  TextEditingController company_code = TextEditingController();
  TextEditingController company_email = TextEditingController();
  TextEditingController company_mobile = TextEditingController();
  TextEditingController company_website = TextEditingController();
  TextEditingController company_address = TextEditingController();

  var status_value = 'Select Status'.obs;
  List<String> status_list = [
    'Select Status',
    'Enable',
    'Disable',
  ];

  void performLoginClick(BuildContext context) {


  }
}
