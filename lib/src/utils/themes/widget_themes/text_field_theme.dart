import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';

class MTextFormFieldTheme {
  MTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
    prefixIconColor: mSecondaryColor,
    floatingLabelStyle: TextStyle(color: mSecondaryColor),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(width: 2.0, color: mSecondaryColor)),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
    prefixIconColor: mPrimaryColor,
    floatingLabelStyle: TextStyle(color: mPrimaryColor),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(width: 2.0, color: mPrimaryColor)),
  );
}
