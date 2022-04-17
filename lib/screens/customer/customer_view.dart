import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/DrawerScreen.dart';

import '../../themes/mythemes.dart';
import 'add_customer/add_customer_view.dart';
import 'customer_logic.dart';
import 'search_customer/search_customer_view.dart';

class CustomerPage extends StatelessWidget {
  final logic = Get.put(CustomerLogic());
  final state = Get.find<CustomerLogic>().state;

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
                    child: Text("Search Customer",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Center(
                    child: Text("Add Customer",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              )
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          children: [
            Search_customerPage(),
            Add_customerPage(),
          ],
        ),
      ),
    );
  }
}
