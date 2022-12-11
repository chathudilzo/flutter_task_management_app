import 'package:flutter/material.dart';

const Color bluishColor = Color(0xFF4e5ae8);
const Color yellowColor = Color(0xFFFFB746);
const Color pinkColor = Color(0xFFff4667);
const Color white = Colors.white;
const Color primaryColor = bluishColor;
const Color darkGrayColor = Color(0xFF121212);
const Color darkHeaderColor = Color(0xFF424242);

class Themes {
// primaryColor-appbar and buttons
//  brightness:-change background and text color accordingly

  static final light =
      ThemeData(colorSchemeSeed: primaryColor, brightness: Brightness.light);

  static final dark =
      ThemeData(colorSchemeSeed: darkGrayColor, brightness: Brightness.dark);
}
