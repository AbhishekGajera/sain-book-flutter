import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/themes/routes.dart';

import 'dashboard_state.dart';

class DashboardLogic extends GetxController {
  final DashboardState state = DashboardState();

  void performOrderSearch(BuildContext context) {
    Get.toNamed(addnewBill);
  }

  void customerSell(BuildContext context) {
    Get.toNamed(customersell);
  }

  void productSearch(BuildContext context) {
    Get.toNamed(productsearch);
  }

  void barcodeSearch(BuildContext context) {
    Get.toNamed(barcodesearch);
  }


  void addUser(BuildContext context) {
    Get.toNamed(user);
  }

  void addcustomer(BuildContext context) {
    Get.toNamed(customer);
  }

  void addCompany(BuildContext context) {
    Get.toNamed(company);
  }

  void addcourier(BuildContext context) {
    Get.toNamed(courior);
  }

  void addwebsite(BuildContext context) {
    Get.toNamed(website);
  }
}
