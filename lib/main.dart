import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sain_book_project/themes/routes.dart';

import 'themes/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sain Book',
      initialRoute: splash,
      getPages: appRoutes(),
    );
  }


}
