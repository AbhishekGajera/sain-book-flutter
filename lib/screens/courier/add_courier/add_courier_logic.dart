import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'add_courier_state.dart';

class AddCourierLogic extends GetxController {
  final AddCourierState state = AddCourierState();
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
  ];

  void performLoginClick(BuildContext context) {

  }
  
}
