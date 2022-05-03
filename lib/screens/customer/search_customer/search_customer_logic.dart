import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/model/CustomerListModel.dart';
import 'package:sain_book_project/network/DioServices.dart';

import '../../../themes/routes.dart';
import '../../../widgets/LoadingDiaog.dart';
import 'search_customer_state.dart';

class Search_customerLogic extends GetxController {
  var customerList = CustomerListModel().obs;
  TextEditingController customerName = TextEditingController()..text = "";
  TextEditingController customerMobile = TextEditingController()..text = "";
  TextEditingController customerEmail = TextEditingController()..text = "";

  DioService dio = DioService();

  final statusValue = 'Select Status'.obs;
  List<String> statusList = ['Select Status', 'Enable', 'Disable', 'Delete'];

  var customerStatus = -1;

  void setNewValue(String value) {
    statusValue.value = value.toString();
    if (value == "Enable") {
      customerStatus = 1;
    } else if (value == "Disable") {
      customerStatus = 0;
    } else if (value == "Delete") {
      customerStatus = 2;
    }
  }

  void performLoginClick(BuildContext context) {
    LoadingDialog(context).startLoading();
    dio
        .getCustomerList(
      id: "all",
      customer_name: customerName.text.toString(),
      customer_mobile: customerMobile.text.toString(),
      customer_email: customerEmail.text.toString(),
      customer_status: customerStatus == -1 ? "" : customerStatus.toString(),
    )
        .then((it) {
      if (it != null) {
        customerList.value = it;
        LoadingDialog(context).stopLoading();
        Get.toNamed(customer_list_page);
      }
    });
  }

  void performEditClick(BuildContext context, CustomerData data) {
    Get.toNamed(useredit, arguments: {
      "from": "fromEditCustomer",
      "customer_data":custoemrdataToJson(data).toString()
    });
  }
}
