import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static textFieldDecoration({required String hint}) => InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      filled: true,
      isDense: true,
      hintStyle: drawerTexeStyle,
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      hintText: hint,
      fillColor: Colors.white);

  static textFieldDecoration2({required String hint}) => InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      );

  static var textFieldTextStyle = TextStyle(fontSize: 17);

  static var drawerTexeStyle = TextStyle(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    fontWeight: FontWeight.w500,
      fontSize: 16
  );

  static var drawerTextWhiteStyle = TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: Colors.white
  );

  static var cupertinobtnTxtStyle = TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontWeight: FontWeight.w500,
      color: Colors.redAccent.shade700,
      fontSize: 16
  );


}
