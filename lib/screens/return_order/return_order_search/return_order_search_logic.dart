import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class Return_order_searchLogic extends GetxController {
  final Return_order_searchState state = Return_order_searchState();
  TextEditingController ordernumber = TextEditingController();
  TextEditingController trackingnumber = TextEditingController();
  TextEditingController loginfromdate = TextEditingController();
  TextEditingController logintodate = TextEditingController();
  TextEditingController customername = TextEditingController();

  final orderstatusValue = 'order status'.obs;
  List<String> orderstatusList = [
    'order status',
    'In Process',
    'Delete',
    'Cancel',
    'Return',
    'Packed',
    'Shipping',
    'Delivered',
    'Completed',
    'Stitch',
  ];
  var orderstatustypeint = 0;

  void setorderstatusType(String value) {
    orderstatusValue.value = value.toString();
    if (value == "In Process") {
      orderstatustypeint = 1;
    } else if (value == "Delete") {
      orderstatustypeint = 2;
    } else if (value == "Cancel") {
      orderstatustypeint = 3;
    } else if (value == "Return") {
      orderstatustypeint = 4;
    } else if (value == "Packed") {
      orderstatustypeint = 5;
    } else if (value == "Shipping") {
      orderstatustypeint = 6;
    } else if (value == "Delivered") {
      orderstatustypeint = 7;
    } else if (value == "Completed") {
      orderstatustypeint = 8;
    } else if (value == "Stitch") {
      orderstatustypeint = 9;
    }
  }

  void performLoginClickSearch(BuildContext context) {}

  void performLoginClickreset(BuildContext context) {}
}
