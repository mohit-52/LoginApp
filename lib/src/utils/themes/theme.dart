import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/utils/themes/widget_themes/elevated_button_theme.dart';
import 'package:login_flutter_app/src/utils/themes/widget_themes/outined_button_theme.dart';
import 'package:login_flutter_app/src/utils/themes/widget_themes/text_field_theme.dart';
import 'package:login_flutter_app/src/utils/themes/widget_themes/text_theme.dart';

class MAppTheme {
  MAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: MTextTheme.lighttextTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.lightOulinedButtonTheme,
    elevatedButtonTheme: MElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: MTextTheme.darktextTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.darkOulinedButtonTheme,
    elevatedButtonTheme: MElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.darkInputDecorationTheme,
  );
}
