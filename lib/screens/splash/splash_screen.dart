import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/themes/routes.dart';

import '../../other/images.dart';
import '../../themes/SassionManager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SassionManager.getBoolean(key: SassionConst.islogin).then((value){
      if(value==true){
        Timer(Duration(seconds: 4), () => Get.toNamed(home));
      }else{
        Timer(Duration(seconds: 4), () => Get.toNamed(login));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Center(
              child: Image(
                image: AssetImage(sainbooktransparent),
                height: 200,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
