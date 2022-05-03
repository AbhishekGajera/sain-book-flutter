import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/mythemes.dart';
import '../DrawerScreen.dart';
import 'manifest_logic.dart';
import 'manifest_search/manifest_search_view.dart';
import 'manifest_tools/manifest_tools_view.dart';

class ManifestPage extends StatelessWidget {
  final logic = Get.put(ManifestLogic());
  final state = Get.find<ManifestLogic>().state;

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
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          children: [
            Manifest_toolsPage(),
            Manifest_searchPage(),
          ],
        ),
      ),
    );
  }
}
