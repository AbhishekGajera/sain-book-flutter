import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/order/search_order/search_order_view.dart';
import 'package:sain_book_project/screens/order/tracking_number/tracking_number_view.dart';

import '../../themes/mythemes.dart';
import '../DrawerScreen.dart';
import 'Orderlogic.dart';
import 'order_tools/order_tools_view.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(OrderLogic());
    final state = Get.find<OrderLogic>().state;

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
                      "Order Tools",
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
                      "Search Order",
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
                      "Tracking Number",
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
            Order_toolsPage(),
            Search_orderPage(),
            Tracking_numberPage()
          ],
        ),
      ),
    );
  }
}
