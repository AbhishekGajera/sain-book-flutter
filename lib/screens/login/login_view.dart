import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../other/images.dart';
import '../../themes/mythemes.dart';
import 'login_logic.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginLogic());
  final state = Get.find<LoginLogic>().state;
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                topSaction(),
                BottomSaction(),
                ExtraSetup(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  topSaction() {
    return Container(
      color: Colors.white,
      height: 300,
      child: const Center(
        child: Image(
          image: AssetImage(sainbooktransparent),
          height: 200,
          width: 200,
        ),
      ),
    );
  }

  BottomSaction() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          textFieldUsername(),
          TextFieldPassword(),
          TextFieldLoginButton()
        ],
      ),
    );
  }

  ExtraSetup() {
    return Container(
      color: Colors.black87,
      height: 500,
    );
  }

  textFieldUsername() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.username,
      decoration: Themes.textFieldDecoration(hint: "Username"),
    ).marginOnly(
      left: 20,
      top: 30,
      right: 20,
      bottom: 10,
    );
  }

  TextFieldPassword() {
    return TextField(
      style: Themes.textFieldTextStyle,
      controller: controller.password,
      decoration: Themes.textFieldDecoration(hint: "Password"),
    ).marginOnly(
      left: 20,
      top: 10,
      right: 20,
      bottom: 10,
    );
  }

  TextFieldLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent.shade700,
        ),
        onPressed: () {
          controller.performLoginClick(context);
        },
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ).marginOnly(
      left: 20,
      right: 20,
      top: 10,
    );
  }
}

//
// decoration: InputDecoration(
// labelText: 'Enter something',
// enabledBorder: OutlineInputBorder(
// borderSide: const BorderSide(width: 3, color: Colors.blue),
// borderRadius: BorderRadius.circular(15),
// ),
// focusedBorder: OutlineInputBorder(
// borderSide: const BorderSide(width: 3, color: Colors.white54),
// borderRadius: BorderRadius.circular(15),
// )),
