
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchUserLogic extends GetxController {
  final userTypedropdownValue = 'Select Usertype'.obs;
  List<String> usertype = [
    'Select Usertype',
    'Administartor',
    'Company Admin',
    'GoDownAdmin',
    'Company Employee',
    'GoDown Employee'
  ];

  final statuDropdownValue = 'Select Status'.obs;
  List<String> userstatus = [
    'Select Status',
    'Disable',
    'Enable',
    'Delete',
  ];

  TextEditingController email = TextEditingController();
  TextEditingController loginfromdate = TextEditingController();
  TextEditingController logintodate = TextEditingController();

  void setSelected(String value) {
    userTypedropdownValue.value = value;
  }

  void performLoginClick(BuildContext context) {

  }
}
