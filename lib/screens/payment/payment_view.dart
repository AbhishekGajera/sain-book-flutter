import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/payment/search_payment/search_payment_view.dart';

import '../../themes/mythemes.dart';
import '../DrawerScreen.dart';
import 'file_payment/file_payment_view.dart';
import 'import_payment/import_payment_view.dart';
import 'payment_logic.dart';

class PaymentPage extends StatelessWidget {
  final logic = Get.put(PaymentLogic());

  @override
  Widget build(BuildContext context) {
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
                    child: Text("Search",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Center(
                    child: Text("Import",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Center(
                    child: Text("File",style: Themes.drawerTextWhiteStyle,),
                  ),
                ),
              )
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          children: [
            Search_paymentPage(),
            Import_paymentPage(),
            File_paymentPage(),
          ],
        ),
      ),
    );
  }
}
