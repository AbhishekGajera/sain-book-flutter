import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/courier/search_courier/search_courier_view.dart';
import 'package:sain_book_project/themes/mythemes.dart';

import '../DrawerScreen.dart';
import 'add_courier/add_courier_view.dart';
import 'courier_logic.dart';

class CourierPage extends StatelessWidget {
  final logic = Get.put(CourierLogic());
  final state = Get.find<CourierLogic>().state;

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
                    child: Text("Search Courier",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Center(
                    child: Text("Add Courier",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              )
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          children: [
            SearchCourierPage(),
            AddCourierPage(),
          ],
        ),
      ),
    );
  }
}
