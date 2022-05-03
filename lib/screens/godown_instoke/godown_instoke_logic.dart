import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'godown_instoke_state.dart';

class Godown_instokeLogic extends GetxController {
  final Godown_instokeState state = Godown_instokeState();

  final company_name = 'Select Company'.obs;
  List<String> company_list = [
    'Select Company',
    'kadlee fashion',
    'Khantil',
    'vandvshop'
  ];

  void setUserType(String value) {
    company_name.value = value.toString();
  }

  void performSearch(BuildContext context) {


  }

  final currentSelectedValue = 'Food'.obs;
  var currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

}
