import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';

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

  DioService dio = DioService();

  void performLoginClick(BuildContext context) {
    // dio.AddCurier(
    //         courier_name: courier_name,
    //         courier_website: courier_website,
    //         cod: cod,
    //         rate: rate,
    //         courier_status: courier_status)
    //     .then((value) {});
  }
}
