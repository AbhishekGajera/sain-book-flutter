import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'website_sell_summery_logic.dart';

class Website_sell_summeryPage extends StatelessWidget {
  final logic = Get.put(Website_sell_summeryLogic());
  final state = Get.find<Website_sell_summeryLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black87,),
    );
  }
}
