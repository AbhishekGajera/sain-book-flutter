import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/DrawerScreen.dart';
import 'package:sain_book_project/screens/return_order/return_order_search/return_order_search_view.dart';
import 'package:sain_book_project/screens/return_order/return_order_tools/return_order_tools_view.dart';
import 'package:sain_book_project/screens/return_order/return_order_tracking_number/return_order_tracking_number_view.dart';

import '../../themes/mythemes.dart';
import 'return_order_logic.dart';

class Return_orderPage extends StatelessWidget {
  final logic = Get.put(Return_orderLogic());
  final state = Get.find<Return_orderLogic>().state;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          bottom: TabBar(
            indicatorColor: Colors.redAccent.shade700,
            tabs: [
              Tab(
                child: Container(
                  child: Center(
                    child: Text(
                      "Tools",
                      textAlign: TextAlign.center,
                      style: Themes.drawerTextWhiteStyle,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Center(
                    child: Text(
                      "Search",
                      textAlign: TextAlign.center,
                      style: Themes.drawerTextWhiteStyle,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Center(
                    child: Text(
                      "Tracking",
                      textAlign: TextAlign.center,
                      style: Themes.drawerTextWhiteStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          children: [
            Return_order_toolsPage(),
            Return_order_searchPage(),
            Return_order_tracking_numberPage()
          ],
        ),
      ),
    );
  }
}
