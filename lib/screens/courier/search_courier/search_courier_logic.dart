import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';

import '../../../model/CourierListModel.dart';
import '../../../themes/routes.dart';
import '../../../widgets/LoadingDiaog.dart';
import 'search_courier_state.dart';

class SearchCourierLogic extends GetxController {
  var courierList = CourierListModel().obs;

  final SearchCourierState state = SearchCourierState();
  TextEditingController couriername = TextEditingController()..text = "";
  var dio = DioService();

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
    'Delete',
  ];

  var cod_id = -1;

  void setCodStatus(String value) {
    code_value.value = value.toString();
    if (value == "Yes") {
      cod_id = 1;
    } else if (value == "No") {
      cod_id = 0;
    }
  }

  var courierStatusID = -1;

  void setCourierStatus(String value) {
    statusValue.value = value.toString();
    if (value == "Enable") {
      courierStatusID = 1;
    } else if (value == "Disable") {
      courierStatusID = 0;
    } else if (value == "Delete") {
      courierStatusID = 2;
    }
  }

  void performLoginClick(BuildContext context) {
    LoadingDialog(context).startLoading();
    dio
        .getCourierList(
            id: "all",
            courier_name: couriername.text.toString(),
            cod: cod_id == -1 ? "" : cod_id.toString(),
            courier_status:
                courierStatusID == -1 ? "" : courierStatusID.toString())
        .then((it) {
      if (it != null) {
        courierList.value = it;
        LoadingDialog(context).stopLoading();
        Get.toNamed(courier_list_page);
      }
    });
  }

  void performEditClick(BuildContext context, Data data) {
    Get.toNamed(useredit, arguments: {
      "from": "fromEditCourier",
      "courear_data": courierdataToJson(data).toString(),
    });
  }
}
