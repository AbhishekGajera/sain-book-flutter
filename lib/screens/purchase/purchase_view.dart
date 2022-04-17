import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'purchase_logic.dart';

class PurchasePage extends StatelessWidget {
  final logic = Get.put(PurchaseLogic());
  final state = Get.find<PurchaseLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
