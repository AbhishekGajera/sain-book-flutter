import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';
import 'package:sain_book_project/widgets/widgets.dart';

import '../../../widgets/LoadingDiaog.dart';
import 'add_courier_state.dart';

class AddCourierLogic extends GetxController {
  final AddCourierState state = AddCourierState();
  TextEditingController couriername = TextEditingController()..text ="";
  TextEditingController courierWebsite = TextEditingController()..text = "";
  TextEditingController rate = TextEditingController()..text = "";
  var code_value = 'Select COD Status'.obs;
  List<String> codStatus = [
    'Select COD Status',
    'Yes',
    'No',
  ];

  var statusValue = 'Select Status'.obs;
  List<String> status = [
    'Select Status',
    'Enable',
    'Disable',
  ];

  DioService dio = DioService();

  var codid = -1;

  void setCodStatus(String value) {
    code_value.value = value.toString();
    if (value == "Yes") {
      codid = 1;
    } else if (value == "No") {
      codid = 0;
    }
  }

  var courierstatusid = -1;
  void courierStatus(String value) {
    statusValue.value = value.toString();
    if (value == "Enable") {
      courierstatusid = 1;
    } else if (value == "Disable") {
      courierstatusid = 0;
    }
  }

  void performAddCurier(BuildContext context) {
    LoadingDialog(context).startLoading();
    dio.AddCurier(
            courier_name: couriername.text.toString(),
            courier_website: courierWebsite.text.toString(),
            cod: codid == -1 ? "" : codid.toString(),
            rate: rate.text.toString(),
            courier_status:
                courierstatusid == -1 ? "" : courierstatusid.toString())
        .then((it) {
      if (it != null) {
        LoadingDialog(context).stopLoading();

        couriername.text = "";
        courierWebsite.text = "";
        rate.text = "";
        statusValue.value = "Select Status";
        code_value.value = "Select COD Status";
        Widgets.showSnackbar(
          context,
          it.msg.toString(),
          Colors.green,
        );
      }
    });
  }
}
