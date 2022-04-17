import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'supplier_logic.dart';

class SupplierPage extends StatelessWidget {
  final logic = Get.put(SupplierLogic());
  final state = Get.find<SupplierLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
