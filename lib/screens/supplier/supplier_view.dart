import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/supplier/seach_supplier/seach_supplier_view.dart';

import '../../themes/mythemes.dart';
import '../DrawerScreen.dart';
import 'add_supplier/add_supplier_view.dart';
import 'supplier_logic.dart';

class SupplierPage extends StatelessWidget {
  final controller = Get.put(SupplierLogic());
  final state = Get.find<SupplierLogic>().state;

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
            Seach_supplierPage(),
            Add_supplierPage(),
          ],
        ),
      ),
    );
  }
}
