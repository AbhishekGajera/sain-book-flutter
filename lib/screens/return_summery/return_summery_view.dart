import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'return_summery_logic.dart';

class Return_summeryPage extends StatelessWidget {
  final controller = Get.put(Return_summeryLogic());
  final state = Get.find<Return_summeryLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
