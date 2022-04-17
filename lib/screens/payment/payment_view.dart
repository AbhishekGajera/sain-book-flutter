import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'payment_logic.dart';

class PaymentPage extends StatelessWidget {
  final logic = Get.put(PaymentLogic());
  final state = Get.find<PaymentLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
