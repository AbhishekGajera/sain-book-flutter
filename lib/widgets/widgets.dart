

import 'package:flutter/material.dart';

class Widgets{

  static void showSnackbar(BuildContext context,String title,Color color) {
    var snackBar = SnackBar(
      backgroundColor: color ,
      content: Text(title),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }



}