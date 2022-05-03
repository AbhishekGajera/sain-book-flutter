import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/product/product_search/product_search_view.dart';
import 'package:sain_book_project/screens/product/product_tools/product_tools_view.dart';

import '../../themes/mythemes.dart';
import '../DrawerScreen.dart';
import 'product_logic.dart';

class ProductPage extends StatelessWidget {
  final logic = Get.put(ProductLogic());
  final state = Get.find<ProductLogic>().state;

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
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          children: [
            Product_toolsPage(),
            Product_searchPage(),
          ],
        ),
      ),
    );
  }
}
