import 'package:film_app/consts/colors.dart';
import 'package:film_app/consts/fontSizes.dart';
import 'package:film_app/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: ProjectColors.blackColor,
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: ProjectColors.redColor,
            fontSize: ProjectFontSizes.normalfontSize,
          ),
          headline2: TextStyle(
            color: ProjectColors.whiteColor,
            fontSize: ProjectFontSizes.normalfontSize
          )

        )
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

