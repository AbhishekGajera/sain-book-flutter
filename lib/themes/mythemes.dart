import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static textFieldDecoration({required String hint}) => InputDecoration(
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(5.0),
      // ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 1, color: Colors.black87),
        borderRadius: BorderRadius.circular(5),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 1, color: Colors.black87),
        borderRadius: BorderRadius.circular(5),
      ),
      filled: true,
      isDense: true,
      labelText: hint,
      labelStyle: drawerTexeStyle,
      alignLabelWithHint: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      fillColor: Colors.white);

  static textFieldDecoration2({required String hint}) => InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.black87),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.black87),
          borderRadius: BorderRadius.circular(5),
        ),
        labelText: hint,
        labelStyle: drawerTexeStyle,
        filled: true,
        fillColor: Colors.white,
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      );

  static var textFieldTextStyle = TextStyle(fontSize: 17);

  static var drawerTexeStyle = TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 16);

  static var drawerTextWhiteStyle = TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: Colors.white);

  static var cupertinobtnTxtStyle = TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontWeight: FontWeight.w500,
      color: Colors.redAccent.shade700,
      fontSize: 16);
  static var listTileTextStyle = TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.black);

  static var listTileTextStyle12 = TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: Colors.black);

  static var listTileTextStyle14 = TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Colors.black);

  static var listTileTextStyle14Blue = TextStyle(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: CupertinoColors.activeBlue);

  static var tableTitalColor = TextStyle(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: CupertinoColors.black,
  );

  static var borderRadius = const BorderRadius.all(Radius.circular(10));

  static Color pink = Color(0xFFD81B60);
  static Color white = Color(0xFFF4F4F4);
  static Color darkblue = Color(0xFF3C8DBC);
  static Color yello = Color(0xFFF39C12);
  static Color red = Color(0xFFDD4B39);
  static Color lightblue = Color(0xFF00C0EF);
}
