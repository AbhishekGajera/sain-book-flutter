import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_supplier_state.dart';

class Add_supplierLogic extends GetxController {



  TextEditingController suppliername = TextEditingController()..text = "";
  TextEditingController suppliercode = TextEditingController()..text = "";
  TextEditingController supplieremail = TextEditingController()..text = "";
  TextEditingController suppliermobile = TextEditingController()..text = "";
  TextEditingController suppelieraddress = TextEditingController()..text = "";
  TextEditingController state = TextEditingController()..text = "";
  TextEditingController city = TextEditingController()..text = "";
  TextEditingController postcode = TextEditingController()..text = "";
  TextEditingController country = TextEditingController()..text = "";

  final statusValue = 'Select Status'.obs;

  List<String> statusList = [
    'Select Status',
    'Enable',
    'Disable',
  ];

  void setNewValue(String value) {
    statusValue.value=value.toString();
  }

  void performLoginClick(BuildContext context) {

  }
}
