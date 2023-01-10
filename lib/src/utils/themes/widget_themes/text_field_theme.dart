import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';

class MTextFormFieldTheme {
  MTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
  const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: mSecondaryColor,
    floatingLabelStyle: TextStyle(color: mSecondaryColor),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2.0, color: mSecondaryColor)),);

  static InputDecorationTheme darkInputDecorationTheme =
  const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: mPrimaryColor,
    floatingLabelStyle: TextStyle(color: mPrimaryColor),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2.0, color: mPrimaryColor)),);
}