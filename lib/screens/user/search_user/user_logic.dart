import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/model/UserListModel.dart';
import 'package:sain_book_project/network/DioServices.dart';

import '../../../other/Constants.dart';
import '../../../themes/routes.dart';
import '../../../widgets/LoadingDiaog.dart';

class SearchUserLogic extends GetxController {
  late BuildContext context;

  DioService dio = DioService();
  var userlistData = UserListModel().obs;

  final userTypedropdownValue = 'Select Usertype'.obs;
  List<String> usertype = [
    'Select Usertype',
    'Administartor',
    'Company Admin',
    'GoDownAdmin',
    'Company Employee',
    'GoDown Employee'
  ];

  final statuDropdownValue = 'Select Status'.obs;
  List<String> userstatus = [
    'Select Status',
    'Disable',
    'Enable',
    'Delete',
  ];

  TextEditingController email = TextEditingController()..text = "";
  TextEditingController loginfromdate = TextEditingController()..text = "";
  TextEditingController logintodate = TextEditingController()..text = "";

  DateTime selectedLoginToDate = DateTime.now();
  DateTime selectedLoginFromDate = DateTime.now();

  void initContext(BuildContext context) {
    this.context = context;
  }

  var statusValue = -1;

  void setStatusValue(String newValue) {
    statuDropdownValue.value = newValue.toString();
    if (newValue == "Disable") {
      statusValue = 0;
    } else if (newValue == "Enable") {
      statusValue = 1;
    } else if (newValue == "Delete") {
      statusValue = 2;
    }
  }

  var usertypeid = 0;

  void setSelected(String value) {
    userTypedropdownValue.value = value;
    if (value == "Administartor") {
      usertypeid = 1;
    } else if (value == "Company Admin") {
      usertypeid = 2;
    } else if (value == "GoDownAdmin") {
      usertypeid = 3;
    } else if (value == "Company Employee") {
      usertypeid = 4;
    } else if (value == "GoDown Employee") {
      usertypeid = 5;
    }
  }

  void performLoginClick(BuildContext context) {
    LoadingDialog(context).startLoading();
    dio
        .getUserList(
            id: "all",
            user_email: email.text.toString(),
            user_type_id: usertypeid == 0 ? "" : usertypeid.toString(),
            date_from: loginfromdate.text.toString(),
            date_to: logintodate.text.toString(),
            user_status: statusValue == -1 ? "" : statusValue.toString())
        .then((it) {
      if (it != null) {
        LoadingDialog(context).stopLoading();
        userlistData.value = it;
        Get.toNamed(userlist);
      }
    });
  }

  void logintoDateset(DateTime picked) {
    selectedLoginToDate = picked;
    logintodate.text =
        "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }

  void loginFromDateSet(DateTime picked) {
    selectedLoginFromDate = picked;
    loginfromdate.text =
        "${getDatewithzero(picked.day)}/${getDatewithzero(picked.month)}/${picked.year}";
  }


  var editUserData = Data().obs;
  void performEditUserClick(BuildContext context, Data user) {
    editUserData.value = user;
    Get.toNamed(useredit, arguments: {"from":"fromEditUser","userdata":dataToJson(user).toString()});
  }


}
