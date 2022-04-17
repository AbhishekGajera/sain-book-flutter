import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';

import 'add_customer_state.dart';

class Add_customerLogic extends GetxController {
  DioService dio = DioService();

  final Add_customerState state = Add_customerState();
  TextEditingController customerName = TextEditingController();
  TextEditingController customerEmail = TextEditingController();
  TextEditingController customerMobile = TextEditingController();
  TextEditingController customerMobile1 = TextEditingController();
  TextEditingController customerAddress = TextEditingController();
  TextEditingController agencyName = TextEditingController();
  TextEditingController agencyMobile = TextEditingController();

  final statusValue = 'Select Status'.obs;
  List<String> statusList = [
    'Select Status',
    'Enable',
    'Disable'
  ];

  final termsValue = 'Select Terms'.obs;
  List<String> termList = [
    'Select Terms',
    'None',
    'Due 15',
    'Due 30',
    'Due 45',
    'Due 10',
    'Due 90'
  ];
  
  void performLoginClick(BuildContext context) {

  }

  void setNewValue(String string) {

  }


}
