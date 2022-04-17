import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'addwebsite_state.dart';

class AddwebsiteLogic extends GetxController {
  final AddwebsiteState state = AddwebsiteState();
  TextEditingController websiteName = TextEditingController();

  final statusValue = 'Select One'.obs;

  List<String> statusList = [
    'Select One',
    'Enable',
    'Disable',
    'Delete'
  ];

  void performLoginClick(BuildContext context) {

  }

  void setNewValue(String value ) {

  }

}
