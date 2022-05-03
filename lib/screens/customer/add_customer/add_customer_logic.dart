import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';

import '../../../widgets/LoadingDiaog.dart';
import '../../../widgets/widgets.dart';
import 'add_customer_state.dart';

class Add_customerLogic extends GetxController {
  DioService dio = DioService();

  final Add_customerState state = Add_customerState();
  TextEditingController customerName = TextEditingController();
  TextEditingController customerEmail = TextEditingController();
  TextEditingController customerMobile = TextEditingController();
  TextEditingController customerMobile1 = TextEditingController();
  TextEditingController customerAddress = TextEditingController();
  TextEditingController agencyName = TextEditingController();
  TextEditingController agencyMobile = TextEditingController();

  final statusValue = 'Select Status'.obs;
  List<String> statusList = ['Select Status', 'Enable', 'Disable'];

  final termsValue = 'Select Terms'.obs;
  List<String> termList = [
    'Select Terms',
    'None',
    'Due 15',
    'Due 30',
    'Due 45',
    'Due 10',
    'Due 90'
  ];

  var customer_status_id = -1;

  void setStatusValue(String value) {
    statusValue.value = value.toString();
    if (value == "Enable") {
      customer_status_id = 1;
    } else if (value == "Disable") {
      customer_status_id = 0;
    }
  }

  var termId = -1;
  void settermValue(String value) {
    termsValue.value = value.toString();
    if (value == "None") {
      termId = 0;
    } else if (value == "Due 15") {
      termId = 1;
    } else if (value == "Due 30") {
      termId = 2;
    } else if (value == "Due 45") {
      termId = 3;
    } else if (value == "Due 10") {
      termId = 4;
    } else if (value == "Due 90") {
      termId = 5;
    }
  }

  void performAddCostomer(BuildContext context) {
    LoadingDialog(context).startLoading();
    dio.addCustomer(
      customer_name: customerName.text.toString(),
      customer_email: customerEmail.text.toString(),
      customer_mobile: customerMobile.text.toString(),
      customer_mobile1: customerMobile1.text.toString(),
      customer_address: customerAddress.text.toString(),
      agency_name: agencyName.text.toString(),
      agency_mobile: agencyMobile.text.toString(),
      term_id: termId == -1 ? "" : termId.toString(),
      customer_status: customer_status_id == -1 ? "" : customer_status_id.toString(),
      customer_id: "",
    ).then((it) {
      if (it != null) {
        LoadingDialog(context).stopLoading();
        Widgets.showSnackbar(
          context,
          it.msg.toString(),
          Colors.green,
        );
        clearData();
      }
    });
  }

  void clearData() {
    termId = -1;
    customer_status_id = -1;
    customerName.text = "";
    customerEmail.text = "";
    customerMobile.text = "";
    customerMobile1.text = "";
    customerAddress.text = "";
    agencyName.text = "";
    agencyMobile.text = "";
    termsValue.value = "Select Terms";
    statusValue.value = "Select Status";
  }

}
