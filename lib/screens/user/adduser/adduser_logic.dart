import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sain_book_project/network/DioServices.dart';
import 'package:sain_book_project/widgets/LoadingDiaog.dart';

import '../../../themes/SassionManager.dart';
import '../../../widgets/widgets.dart';

class AdduserLogic extends GetxController {
  DioService dio = DioService();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController repassword = TextEditingController();
  TextEditingController mobilenumber = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController email = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  final statuDropdownValue = 'Select Status'.obs;
  List<String> userstatus = [
    'Select Status',
    'Disable',
    'Enable',
  ];

  final genderValue = 'Select Gender'.obs;

  List<String> genderList = [
    'Select Gender',
    'Male',
    'Female',
  ];

  final userRoleValue = 'Select User Role'.obs;
  List<String> userroleList = [
    'Select User Role',
    'Administrator',
    'Company Admin',
    'GoDown Admin',
    'Company Employee',
    'GoDown Employee',
  ];

  var All = false.obs;
  var khantil = false.obs;
  var vandshop = false.obs;
  var kadleefashion = false.obs;

  final ImagePicker picker = ImagePicker();

  var genderint = 0;

  void setNewValue(String newValue) {
    print(newValue.toString());
    genderValue.value = newValue.toString();
    if (newValue == "Male") {
      genderint = 1;
    } else if (newValue == "Female") {
      genderint = 2;
    }
  }

  var usertypeint = 0;

  void setUserType(String value) {
    userRoleValue.value = value.toString();
    if (value == "Administrator") {
      usertypeint = 1;
    } else if (value == "Company Admin") {
      usertypeint = 2;
    } else if (value == "GoDown Admin") {
      usertypeint = 3;
    } else if (value == "Company Employee") {
      usertypeint = 4;
    } else if (value == "GoDown Employee") {
      usertypeint = 5;
    }
  }

  var userstatusint = 0;

  void changeUserStatus(String value) {
    statuDropdownValue.value = value.toString();
    if (value == "Enable") {
      userstatusint = 1;
    } else if (value == "Disable") {
      userstatusint = 2;
    }
  }

  var company_list = [];

  void selectAllCompany(bool value) {
    if (value) {
      company_list.add(1);
      company_list.add(2);
      company_list.add(3);
    } else {
      company_list.clear();
    }
  }

  void selectOneCompany(bool value, int s) {
    if (value) {
      company_list.add(s);
    } else {
      company_list.remove(s);
    }
  }

  void performLoginClick(BuildContext context) {
    print(company_list.toString());

    SassionManager.getString(key: SassionConst.userid).then(
      (value) {
        LoadingDialog(context).startLoading();
        dio
            .saveUser(
                firstname: firstname.text.toString(),
                lastname: lastname.text.toString(),
                user_email: email.text.toString(),
                password: password.text.toString(),
                repassword: repassword.text.toString(),
                mobile_no: mobilenumber.text.toString(),
                gender: genderint == 0 ? "" : genderint.toString(),
                user_type_id: usertypeint == 0 ? "" : usertypeint.toString(),
                company_id: company_list.toString(),
                default_status: "1",
                user_status: userstatusint == 0 ? "" : userstatusint.toString(),
                image: imagefile.value.toString(),
                user_id: value.toString())
            .then((it) {
          if (it != null) {
            LoadingDialog(context).stopLoading();
            Widgets.showSnackbar(
              context,
              it.msg.toString(),
              Colors.green,
            );
          } else {
            LoadingDialog(context).stopLoading();
          }
        }).catchError((onError) {
          LoadingDialog(context).stopLoading();
        });
      }
    );
  }

  var imagefile = "".obs;

  Future<void> performImageSelect() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    print("---------------------------------------------------->");
    print(image!.path.toString());
    File(image.path);
    imagefile.value = image.path;
  }
}
