import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';

import '../../../widgets/LoadingDiaog.dart';
import '../../../widgets/widgets.dart';
import 'add_company_state.dart';

class AddCompanyLogic extends GetxController {
  final AddCompanyState state = AddCompanyState();
  TextEditingController company_name = TextEditingController();
  TextEditingController company_code = TextEditingController();
  TextEditingController company_email = TextEditingController();
  TextEditingController company_mobile = TextEditingController();
  TextEditingController company_website = TextEditingController();
  TextEditingController company_address = TextEditingController();

  var status_value = 'Select Status'.obs;
  List<String> status_list = [
    'Select Status',
    'Enable',
    'Disable',
  ];

  var companyStatusValue = -1;
  void setStatusValue(String value) {
    status_value.value = value.toString();
    if (value == "Enable") {
      companyStatusValue = 1;
    } else if (value == "Disable") {
      companyStatusValue = 0;
    }
  }

  DioService dio = DioService();

  void performLoginClick(BuildContext context) {
    LoadingDialog(context).startLoading();
    dio.AddCompany(
            company_name: company_name.text,
            code: company_code.text,
            company_email: company_email.text,
            company_mobile: company_mobile.text,
            company_website: company_website.text,
            company_address: company_address.text,
            company_status:
                companyStatusValue == -1 ? "" : companyStatusValue.toString(),
            company_id: "111112")
        .then((it) {
      if (it != null) {
        LoadingDialog(context).stopLoading();
        Widgets.showSnackbar(
          context,
          it.msg.toString(),
          Colors.green,
        );
        status_value.value = "Select Status";
        company_email.text = "";
        company_mobile.text = "";
        company_website.text = "";
        company_address.text = "";
        company_name.text = "";
        company_code.text = "";
      }else{
        LoadingDialog(context).stopLoading();
      }
    }).catchError((onError){
      LoadingDialog(context).stopLoading();
    });
  }
}
