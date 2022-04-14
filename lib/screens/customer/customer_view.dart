import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'customer_logic.dart';

class CustomerPage extends StatelessWidget {
  final logic = Get.put(CustomerLogic());
  final state = Get.find<CustomerLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
