import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class Product_searchLogic extends GetxController {
  final Product_searchState state = Product_searchState();
  // final Search_orderState state = Search_orderState();
  TextEditingController productsku = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController fromdate = TextEditingController();
  TextEditingController todate = TextEditingController();
  TextEditingController mintargetprice = TextEditingController();
  TextEditingController maxtargetprice = TextEditingController();
  TextEditingController minquantity = TextEditingController();
  TextEditingController maxquantity = TextEditingController();

  final companyValue = 'Company'.obs;
  List<String> companyList = [
    'Company',
    'Kadleefashion',
    'Khantil',
    'Vandvshop',
  ];
  var companytypeint = 0;

  void setcompanyType(String value) {
    companyValue.value = value.toString();
    if (value == "Kadleefashion") {
      companytypeint = 1;
    } else if (value == "Khantil") {
      companytypeint = 2;
    } else if (value == "Vandvshop") {
      companytypeint = 3;
    }
  }

  final productstatusValue = 'product status'.obs;
  List<String> productstatusList = [
    'product status',
    'In stock',
    'out of stock',
  ];
  var productstatustypeint = 0;

  void setproductstatusType(String value) {
    productstatusValue.value = value.toString();
    if (value == "In stock") {
      productstatustypeint = 1;
    } else if (value == "out of stock") {
      productstatustypeint = 2;
    }
  }

  void performLoginClickSearch(BuildContext context) {}

  void performLoginClickreset(BuildContext context) {}
}
