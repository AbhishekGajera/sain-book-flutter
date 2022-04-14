import 'package:get/get.dart';

import '../../model/LoginModel.dart';
import '../../themes/SassionManager.dart';
import 'home_state.dart';

class HomeLogic extends GetxController {
  final HomeState state = HomeState();
  var selectedPage = 0.obs;
  @override
  void onInit() {
    initData();
    super.onInit();
  }

  var loginData = Login().obs;
  Future<void> initData() async {
    SassionManager.getString(key:  SassionConst.loginUserData).then((value){
       Login login =  loginFromJson(value.toString());
       loginData.value = login;
    });


  }
}
