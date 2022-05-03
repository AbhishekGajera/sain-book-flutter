import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../model/CompanyListModel.dart';
import '../../model/CourierListModel.dart';
import '../../model/CustomerListModel.dart';
import '../../model/UserListModel.dart';
import '../../model/WebsiteListModel.dart';
import '../company/add_company/add_company_view.dart';
import '../courier/add_courier/add_courier_view.dart';
import '../customer/add_customer/add_customer_view.dart';
import '../website/addwebsite/addwebsite_view.dart';
import 'adduser/adduser_view.dart';

class UserEditPage extends StatelessWidget {
  var one = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: one["from"] == "fromEditUser"
          ? AdduserPage(data: userdataFromJson(one["userdata"].toString()))
          : one["from"] == "fromEditCompany"
              ? AddCompanyPage(
                  company: companydataFromJson(one["company_data"].toString()))
              : one["from"] == "fromEditCourier"
                  ? AddCourierPage(
                      courier:
                          courierdataFromJson(one["courear_data"].toString()))
                  : one["from"] == "fromEditWebsite"
                      ? AddwebsitePage(
                          website: websitedataFromJson(
                              one["website_data"].toString()))
                      : one["from"] == "fromEditCustomer"
                          ? Add_customerPage(
                              customer: customerdataFromJson(
                                  one["customer_data"].toString()))
                          : Container(
                              child: Center(
                              child: Text("No Data Found"),
                            )),
    );
  }
}
