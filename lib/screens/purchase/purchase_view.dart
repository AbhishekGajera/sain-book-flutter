import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/mythemes.dart';
import '../DrawerScreen.dart';
import 'add_purchase/add_purchase_view.dart';
import 'purchase_logic.dart';
import 'search_purchase/search_purchase_view.dart';

class PurchasePage extends StatelessWidget {
  final logic = Get.put(PurchaseLogic());
  final state = Get.find<PurchaseLogic>().state;

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
                    child: Text("Search Purchase",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Center(
                    child: Text("Add Purchase",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              )
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          children: [
            Search_purchasePage(),
            Add_purchasePage(),
          ],
        ),
      ),
    );
  }
}
