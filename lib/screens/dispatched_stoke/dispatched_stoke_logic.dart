import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'dispatched_stoke_state.dart';

class Dispatched_stokeLogic extends GetxController {
  final Dispatched_stokeState state = Dispatched_stokeState();
  final company_name = 'Select Company'.obs;
  List<String> company_list = [
    'Select Company',
    'kadlee fashion',
    'Khantil',
    'vandvshop'
  ];

  void performSearch(BuildContext context) {}

  void setUserType(String value) {
    company_name.value = value.toString();
  }



}
