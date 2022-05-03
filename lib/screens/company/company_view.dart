import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/company/search_company/search_company_view.dart';
import 'package:sain_book_project/themes/mythemes.dart';

import '../DrawerScreen.dart';
import 'add_company/add_company_view.dart';
import 'company_logic.dart';

class CompanyPage extends StatelessWidget {
  final logic = Get.put(CompanyLogic());


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
                    child: Text("Search Company",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Center(
                    child: Text("Add Company",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              )
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          children: [
            SearchCompanyPage(),
            AddCompanyPage(),
          ],
        ),
      ),
    );
  }
}
