import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'company_revenue_logic.dart';

class Company_revenuePage extends StatelessWidget {
  final logic = Get.put(Company_revenueLogic());
  final state = Get.find<Company_revenueLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
