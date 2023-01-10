import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

// LIGHT AND DARK OUTLINED BUTTON THEME

class MOutlinedButtonTheme {
  MOutlinedButtonTheme._();

  // LIGHT THEME
  static final lightOulinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: mSecondaryColor,
      side: BorderSide(color: mSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: mButtonHeight),
    ),
  );

  // DARK THEME
  static final darkOulinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: mWhiteColor,
      side: BorderSide(color: mWhiteColor),
      padding: EdgeInsets.symmetric(vertical: mButtonHeight),
    ),
  );
}
