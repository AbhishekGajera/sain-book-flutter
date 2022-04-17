import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/mythemes.dart';
import '../DrawerScreen.dart';
import 'addwebsite/addwebsite_view.dart';
import 'search_website/search_website_view.dart';
import 'website_logic.dart';

class WebsitePage extends StatelessWidget {
  final contrller = Get.put(WebsiteLogic());
  final state = Get.find<WebsiteLogic>().state;

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
                    child: Text("Search Website",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Center(
                    child: Text("Add Website",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              )
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          children: [
            Search_websitePage(),
            AddwebsitePage(),
          ],
        ),
      ),
    );
  }
}
