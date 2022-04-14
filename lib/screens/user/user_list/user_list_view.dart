import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_list_logic.dart';

class UserListPage extends StatelessWidget {
  final logic = Get.put(UserListLogic());
  final state = Get.find<UserListLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
