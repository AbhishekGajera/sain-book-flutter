import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/ProductDataModel.dart';
import '../../../network/DioServiceSecond.dart';
import 'state.dart';

class Barcode_searchLogic extends GetxController {
  final Barcode_searchState state = Barcode_searchState();

  TextEditingController barcodenumber = TextEditingController();

  var diosecond = DioServiceSecond();

  var product = ProductDataModel().obs;

  void performClickSearch(BuildContext context) {
    diosecond.getBarCode(barcode: barcodenumber.text.toString()).then((value) {
      if (value!= null) {
        product.value = value;
      }
    });
  }
}
