import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'website_logic.dart';

class WebsitePage extends StatelessWidget {
  final logic = Get.put(WebsiteLogic());
  final state = Get.find<WebsiteLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
