import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';

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

  DioService dio = DioService();
  void performLoginClick(BuildContext context) {
    dio.AddCompany(company_name: company_name.text,
        code: company_code.text,
        company_email: company_email.text,
        company_mobile: company_mobile.text,
        company_website: company_website.text,
        company_address: company_address.text,
        company_status: "",
        company_id: "company_id"
    ).then((value){
      if(value!=null){

      }else{

      }
    });

  }


}
