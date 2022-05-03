import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';

import '../../../model/CompanyListModel.dart';
import '../../../themes/routes.dart';
import '../../../widgets/LoadingDiaog.dart';
import 'search_company_state.dart';

class SearchCompanyLogic extends GetxController {
  DioService dio = DioService();
  var companyList = CompanyListModel().obs;
  final SearchCompanyState state = SearchCompanyState();
  TextEditingController company_name = TextEditingController();
  TextEditingController company_mobile = TextEditingController();
  TextEditingController company_email = TextEditingController();

  var status_value = 'Select Status'.obs;
  List<String> status_list = ['Select Status', 'Disable', 'Enable', 'Delete'];

  var statusValue = -1;

  void setStatusValue(String value) {
    status_value.value = value.toString();
    if (value == "Disable") {
      statusValue = 0;
    } else if (value == "Enable") {
      statusValue = 1;
    } else if (value == "Delete") {
      statusValue = 2;
    }
  }

  void performLoginClick(BuildContext context) {
    LoadingDialog(context).startLoading();
    dio
        .getCompanyList(
            id: "all",
            company_name: company_name.text.toString(),
            company_mobile: company_mobile.text.toString(),
            company_email: company_email.text.toString(),
            company_status: statusValue == -1 ? "" : statusValue.toString())
        .then((it) {
      if (it != null) {
        companyList.value = it;
        LoadingDialog(context).stopLoading();
        Get.toNamed(companylist_page);
      }
    });
  }

  void performEditClick(BuildContext context, Data company) {
    Get.toNamed(useredit, arguments: {
      "from": "fromEditCompany",
      "company_data":companydataToJson(company).toString()

    });
  }
}
