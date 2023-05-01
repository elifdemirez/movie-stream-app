import 'package:flutter/material.dart';
import 'package:film_app/consts/colors.dart';
import 'package:film_app/consts/fontSizes.dart';
import 'package:film_app/main_page.dart';
class ThemeClass{
  static ThemeData textTheme1=ThemeData(
    textTheme: TextTheme(
      headline1: TextStyle(
        color: ProjectColors.redColor,
        fontSize: ProjectFontSizes.normalfontSize
      )
    )
  );
  static ThemeData textTheme2=ThemeData(
    textTheme: TextTheme(
      headline2: TextStyle(
        color: ProjectColors.whiteColor,
        fontSize: ProjectFontSizes.normalfontSize
      )
    )
  );
}