import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Search_websiteLogic extends GetxController {

  TextEditingController websiteName = TextEditingController();

  final statusValue = 'Select One'.obs;

  List<String> statusList = ['Select One', 'Enable', 'Disable', 'Delete'];

  void performLoginClick(BuildContext context) {}

  void setNewValue(String string) {}

}
