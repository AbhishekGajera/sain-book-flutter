import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_purchase_logic.dart';

class Add_purchasePage extends StatelessWidget {
  final logic = Get.put(Add_purchaseLogic());
  final state = Get.find<Add_purchaseLogic>().state;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

      ],
    );
  }
}
