import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';

import '../../../model/WebsiteListModel.dart';
import '../../../themes/routes.dart';
import '../../../widgets/LoadingDiaog.dart';

class Search_websiteLogic extends GetxController {
  var dio = DioService();
  var websiteList = WebsiteListModel().obs;
  TextEditingController websiteName = TextEditingController();

  final statusValue = 'Select One'.obs;
  List<String> statusList = ['Select One', 'Enable', 'Disable', 'Delete'];

  var website_status = -1;

  void setNewValue(String value) {
    statusValue.value = value;
    if (value == "Enable") {
      website_status = 1;
    } else if (value == "Disable") {
      website_status = 0;
    } else if (value == "Delete") {
      website_status = 2;
    }
  }

  void performLoginClick(BuildContext context) {
    LoadingDialog(context).startLoading();
    dio
        .getWebsiteList(
            id: "all",
            website_name: websiteName.text.toString(),
            website_status:
                website_status == -1 ? "" : website_status.toString())
        .then((it) {
      if (it != null) {
        websiteList.value = it;
        LoadingDialog(context).stopLoading();
        Get.toNamed(websitelist);
      }
    });
  }

  void performEditClick(BuildContext context, Data data) {
    Get.toNamed(useredit, arguments: {
      "from": "fromEditWebsite",
      "website_data":websitedataToJson(data).toString()
    });
  }
}
