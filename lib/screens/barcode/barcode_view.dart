import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/mythemes.dart';
import '../DrawerScreen.dart';
import 'barcode_logic.dart';
import 'barcode_search/barcode_search_view.dart';
import 'barcode_tools/barcode_tools_view.dart';

class BarcodePage extends StatelessWidget {
  final logic = Get.put(BarcodeLogic());
  final state = Get.find<BarcodeLogic>().state;

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
            Barcode_toolsPage(),
            Barcode_searchPage(),
          ],
        ),
      ),
    );
  }
}
