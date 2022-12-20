import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bluishColor = Color(0xFF4e5ae8);
const Color yellowColor = Color(0xFFFFB746);
const Color secPrimaryColor = Color.fromARGB(255, 198, 121, 234);
const Color pinkColor = Color(0xFFff4667);
const Color white = Colors.white;
const Color primaryColor = bluishColor;
const Color darkGrayColor = Color(0xFF121212);
const Color darkHeaderColor = Color(0xFF424242);

class Themes {
// primaryColor-appbar and buttons
//  brightness:-change background and text color accordingly

  static final light = ThemeData(
      backgroundColor: Colors.white,
      colorSchemeSeed: primaryColor,
      brightness: Brightness.light);

  static final dark = ThemeData(
      backgroundColor: darkGrayColor,
      colorSchemeSeed: darkGrayColor,
      brightness: Brightness.dark);
}

TextStyle get subHeaddingStyle {
  //public method.outside of the class
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.grey[400] : Colors.grey));
}

TextStyle get headdingStyle {
  //public method.outside of the class
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get titleStyle {
  //public method.outside of the class
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get subTitleStyle {
  //public method.outside of the class
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Get.isDarkMode ? Colors.grey[100] : Colors.grey[600]));
}
