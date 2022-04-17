import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'product_sell_summery_logic.dart';

class Product_sell_summeryPage extends StatelessWidget {
  final logic = Get.put(Product_sell_summeryLogic());
  final state = Get.find<Product_sell_summeryLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
