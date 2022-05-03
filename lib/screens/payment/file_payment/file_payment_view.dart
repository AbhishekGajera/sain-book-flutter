import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'file_payment_logic.dart';

class File_paymentPage extends StatelessWidget {
  final logic = Get.put(File_paymentLogic());
  final state = Get.find<File_paymentLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
