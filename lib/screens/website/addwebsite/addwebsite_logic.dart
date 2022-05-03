import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';

import '../../../widgets/LoadingDiaog.dart';
import '../../../widgets/widgets.dart';
import 'addwebsite_state.dart';

class AddwebsiteLogic extends GetxController {
  final AddwebsiteState state = AddwebsiteState();
  TextEditingController websiteName = TextEditingController()..text = "";
  TextEditingController websiteUrl = TextEditingController()..text = "";
  var dio = DioService();

  final statusValue = 'Select One'.obs;
  List<String> statusList = [
    'Select One',
    'Enable',
    'Disable',
  ];

  var websiteStatusValue = -1;
  void setNewValue(String value) {
    statusValue.value = value;
    if (value == "Enable") {
      websiteStatusValue = 1;
    } else if (value == "Disable") {
      websiteStatusValue = 0;
    }
  }

  void performAddWebsite(BuildContext context) {
    LoadingDialog(context).startLoading();
    dio.saveWebsite(
            website_name: websiteName.text.toString(),
            website_url: websiteUrl.text.toString(),
            website_status: websiteStatusValue == -1 ? "" : websiteStatusValue.toString())
        .then((it) {
      if (it != null) {
        LoadingDialog(context).stopLoading();
        websiteName.text = "";
        websiteUrl.text = "";
        websiteStatusValue=-1;
        statusValue.value = "Select One";
        Widgets.showSnackbar(
          context,
          it.msg.toString(),
          Colors.green,
        );
      }
    });
  }
}
