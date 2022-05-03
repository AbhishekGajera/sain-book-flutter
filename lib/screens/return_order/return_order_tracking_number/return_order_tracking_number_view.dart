import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'return_order_tracking_number_logic.dart';

class Return_order_tracking_numberPage extends StatelessWidget {
  final logic = Get.put(Return_order_tracking_numberLogic());
  final state = Get.find<Return_order_tracking_numberLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
