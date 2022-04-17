import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'godown_instoke_logic.dart';

class Godown_instokePage extends StatelessWidget {
  final logic = Get.put(Godown_instokeLogic());
  final state = Get.find<Godown_instokeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
