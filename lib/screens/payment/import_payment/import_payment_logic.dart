import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'import_payment_state.dart';

class Import_paymentLogic extends GetxController {
  final Import_paymentState state = Import_paymentState();
  final company_name = 'Select Company'.obs;
  List<String> company_list = [
    'Select Company',
    'kadlee fashion',
    'Khantil',
    'vandvshop'
  ];

  void setUserType(String value) {
    company_name.value=value.toString();
  }

  void performImport(BuildContext context) {

  }
}
