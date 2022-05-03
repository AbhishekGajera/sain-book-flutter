import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../other/Constants.dart';
import 'search_payment_state.dart';

class Search_paymentLogic extends GetxController {
  final Search_paymentState state = Search_paymentState();

  TextEditingController order_number = TextEditingController()..text ="";
  TextEditingController tracking_number = TextEditingController()..text = "";
  TextEditingController payment_file_number = TextEditingController()..text = "";
  TextEditingController fromOrderDate = TextEditingController()..text = "";
  TextEditingController toOrderDate = TextEditingController()..text = "";
  TextEditingController toPaymentDate = TextEditingController()..text = "";
  TextEditingController fromPaymentDate = TextEditingController()..text = "";

  final company_name = 'Select Company'.obs;
  List<String> company_list = [
    'Select Company',
    'kadlee fashion',
    'Khantil',
    'vandvshop'
  ];

  DateTime selectedLoginFromDate = DateTime.now();
  DateTime selectedLoginToDate = DateTime.now();
  DateTime selectedToPaymentDate = DateTime.now();
  DateTime selectedFromPaymentDate = DateTime.now();

  void setUserType(String value) {
    company_name.value = value.toString();
  }

  void loginFromDateSet(DateTime picked) {
    selectedLoginFromDate = picked;
    fromOrderDate.text = "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  void loginToDateSet(DateTime picked) {
    selectedLoginToDate = picked;
    toOrderDate.text = "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  void ToPaymentDateSet(DateTime picked) {
    selectedToPaymentDate = picked;
    toPaymentDate.text = "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  void FromPaymentDateSet(DateTime picked) {
    selectedFromPaymentDate = picked;
    fromPaymentDate.text = "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  void performSearch(BuildContext context) {


  }

}
