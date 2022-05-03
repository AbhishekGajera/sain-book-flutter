import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/network/DioServices.dart';
import 'package:sain_book_project/themes/SassionManager.dart';

import '../../model/LoginModel.dart';
import '../../themes/routes.dart';
import '../../widgets/LoadingDiaog.dart';
import 'login_state.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();
  DioService dio = DioService();
  TextEditingController username = TextEditingController()
    ..text = "";
  TextEditingController password = TextEditingController()..text = "";

  void performLoginClick(BuildContext context) async {
    LoadingDialog(context).startLoading();
    dio.login(username: username.text, password: password.text).then((it) {
      if (it != null) {
        LoadingDialog(context).stopLoading();
        SassionManager.saveBoolean(key: SassionConst.islogin, value: true).then((value) {
          SassionManager.saveString(key: SassionConst.loginUserData, value: loginToJson(it)).then((value) {
            SassionManager.saveString(key: SassionConst.userid, value: it.data!.userId.toString()).then((value){
              Get.toNamed(home);
            });
          });
        });
      } else {
        LoadingDialog(context).stopLoading();
      }
    });
  }

}
