
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';

import '../../../themes/routes.dart';

class SearchUserLogic extends GetxController {
  late BuildContext context;
  DioService dio = DioService();
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

  DateTime selectedLoginToDate = DateTime.now();
  DateTime selectedLoginFromDate = DateTime.now();


  void initContext(BuildContext context) {
    this.context=context;
  }

  void setSelected(String value) {
    userTypedropdownValue.value = value;
  }


  void performLoginClick(BuildContext context) {
    Get.toNamed(userlist);
  }

  void logintoDateset(DateTime picked) {
   selectedLoginToDate = picked;
   logintodate.text = "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  void loginFromDateSet(DateTime picked) {
    selectedLoginFromDate = picked;
    loginfromdate.text = "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  getDatewithzero(int day) {
    return day<10?"0$day":day.toString();
  }


}
