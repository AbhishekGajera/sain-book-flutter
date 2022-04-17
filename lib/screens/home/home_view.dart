import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/screens/company/company_view.dart';
import 'package:sain_book_project/screens/courier/courier_view.dart';
import 'package:sain_book_project/screens/customer/customer_view.dart';
import 'package:sain_book_project/screens/website/website_view.dart';
import '../user/user_view.dart';
import 'home_logic.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(HomeLogic());
  final state = Get.find<HomeLogic>().state;

  var pages = [
    UserPage(),
    CompanyPage(),
    CourierPage(),
    CustomerPage(),
    WebsitePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return pages[controller.selectedPage.value];
    });
  }
}

