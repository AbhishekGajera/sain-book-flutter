import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/company/company_view.dart';
import 'package:sain_book_project/screens/courier/courier_view.dart';
import 'package:sain_book_project/screens/customer/customer_view.dart';
import 'package:sain_book_project/screens/customer_sell/customer_sell_view.dart';
import 'package:sain_book_project/screens/dashboard/dashboard_view.dart';
import 'package:sain_book_project/screens/website/website_view.dart';
import '../addnew_b_ill/addnew_b_ill_view.dart';
import '../barcode/barcode_search/barcode_search_view.dart';
import '../barcode/barcode_view.dart';
import '../company_revenue/company_revenue_view.dart';
import '../godown_instoke/godown_instoke_view.dart';
import '../payment/payment_view.dart';
import '../product/product_search/product_search_view.dart';
import '../product/product_view.dart';
import '../product_sell_summery/product_sell_summery_view.dart';
import '../return_summery/return_summery_view.dart';
import '../user/user_view.dart';
import '../website_sell_summery/website_sell_summery_view.dart';
import 'home_logic.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(HomeLogic());
  final state = Get.find<HomeLogic>().state;

  var pages = [
    DashboardPage(),
    UserPage(),
    CompanyPage(),
    CourierPage(),
    CustomerPage(),
    WebsitePage(),
    PaymentPage(),
    Godown_instokePage(),
    Company_revenuePage(),
    Website_sell_summeryPage(),
    Product_sell_summeryPage(),
    Return_summeryPage(),
    Product_searchPage(),
    Barcode_searchPage(),
    AddnewBIllPage(),
    Customer_sellPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return WillPopScope(
          child: pages[controller.selectedPage.value],
          onWillPop: () async {
            SystemNavigator.pop();
            return true;
          });
    });
  }
}
