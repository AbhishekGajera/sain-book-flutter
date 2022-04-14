import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/user/adduser/adduser_view.dart';
import 'package:sain_book_project/themes/mythemes.dart';

import '../DrawerScreen.dart';
import 'search_user/user_view.dart';
import 'user_logic.dart';

class UserPage extends StatelessWidget {
  final logic = Get.put(UserLogic());
  final state = Get.find<UserLogic>().state;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          bottom: TabBar(
            indicatorColor: Colors.redAccent.shade700,
            tabs: [
              Tab(
                child: Container(
                  child: Center(
                    child: Text("Search User",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Center(
                    child: Text("Add User",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              )
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          children: [
            UserSearchPage(),
            AdduserPage(),
          ],
        ),
      ),
    );
  }
}
