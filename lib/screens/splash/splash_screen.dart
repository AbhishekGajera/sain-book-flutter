import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/themes/routes.dart';

import '../../other/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 7), () => Get.toNamed(login));
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
