import 'package:barcodescanner/utils/cutomThems.dart/app_bar_theme.dart';
import 'package:barcodescanner/utils/cutomThems.dart/bottum_sheet_theme.dart';
import 'package:barcodescanner/utils/cutomThems.dart/eleveted_button_theme.dart';
import 'package:barcodescanner/utils/cutomThems.dart/outlined_theme_button.dart';
import 'package:barcodescanner/utils/cutomThems.dart/text_field_theme.dart';
import 'package:barcodescanner/utils/cutomThems.dart/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTAppTheme.TextLightTheme,
    appBarTheme: TAppbarTheme.lightAppBarTheme,
    bottomSheetTheme: TbottumSheet.LightBottomSheetTheme,
    elevatedButtonTheme: TElevetedButtonTheme.lightElevetedButtonTheme,
    outlinedButtonTheme: TOutlinedTheme.lightOuttinedButtonTheme,
    inputDecorationTheme: TTextFormField.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTAppTheme.TextDarkTheme,
    appBarTheme: TAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: TbottumSheet.darkBottomSheetTheme,
    outlinedButtonTheme: TOutlinedTheme.darkOuttinedButtonTheme,
    elevatedButtonTheme: TElevetedButtonTheme.darkElevetedButtonTheme,
    inputDecorationTheme: TTextFormField.darkInputDecorationTheme,
  );
}
