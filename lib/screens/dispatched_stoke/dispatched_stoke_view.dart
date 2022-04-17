import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dispatched_stoke_logic.dart';

class Dispatched_stokePage extends StatelessWidget {
  final logic = Get.put(Dispatched_stokeLogic());
  final state = Get.find<Dispatched_stokeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
