import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xff5d9cec);
  static Color colorLightGreen = Color(0xffdfecdb);
  static Color colorRed = Color(0xffec4b4b);
  static Color colorGreen = Color(0xff61e757);
  static Color colorBlack = Color(0xff242424);
  static Color colorWhite = Color(0xffFFFFFF);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: lightPrimary,
          onPrimary: colorWhite,
          secondary: colorLightGreen,
          onSecondary: colorWhite,
          error: Colors.red,
          onError: Colors.red,
          background: colorLightGreen,
          onBackground: lightPrimary,
          surface: Colors.white,
          onSurface: Colors.black),
      scaffoldBackgroundColor: colorLightGreen,
      appBarTheme: AppBarTheme(
          centerTitle: false,
          color: lightPrimary,
          elevation: 0,
          iconTheme: IconThemeData(
            color: colorWhite,
          )),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          color: colorWhite,
          fontWeight: FontWeight.w700,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          color:lightPrimary,
          fontWeight: FontWeight.w400,
        ),
        bodyText1: TextStyle(
          fontSize: 12,
          color: colorBlack,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: lightPrimary,
        unselectedItemColor: Colors.grey,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colorWhite,
      ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: lightPrimary,
    )
  );
}
