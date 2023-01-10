import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

// LIGHT AND DARK ELEVATED BUTTON THEME DATA
class MElevatedButtonTheme {
  MElevatedButtonTheme._();

// LIGHT BUTTON THEME
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        elevation: 0,
        foregroundColor: mWhiteColor,
        backgroundColor: mSecondaryColor,
        side: BorderSide(color: mSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: mButtonHeight),
        textStyle: TextStyle(color: mWhiteColor)),
  );

// DARK BUTTON THEME
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        elevation: 0,
        foregroundColor: mSecondaryColor,
        backgroundColor: mWhiteColor,
        side: BorderSide(color: mSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: mButtonHeight),
        textStyle: TextStyle(color: mWhiteColor),
    ),
  );
}
