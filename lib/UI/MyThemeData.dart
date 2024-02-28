import 'package:flutter/material.dart';

class MyThemeData {
  static const Color primaryLight = Color(0xFFB7935F);
  static const Color primaryDark = Color(0xFF141A2E);
  static const Color secondaryDark = Color(0xFFFACC1D);
  static const String fontfamily = "messiri";

  static final ThemeData light = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
          color:Colors.black,
          fontSize: 20,
          fontFamily: fontfamily,
          fontWeight: FontWeight.w400
      ),
      titleLarge: TextStyle(fontSize: 25,
        color: Colors.black,
        fontFamily: fontfamily,
        fontWeight: FontWeight.w700 ,
      ) ,
      titleMedium: TextStyle(fontSize: 25,
        color: Colors.black,
        fontFamily: fontfamily,
        fontWeight: FontWeight.w400 ,
      ) ,
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 12,
      surfaceTintColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryLight,
      selectedIconTheme: IconThemeData(color: Colors.black),
      unselectedIconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryLight,
      primary: primaryLight,
    ),
    useMaterial3: true,
  );
  static final ThemeData dark = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: primaryDark
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color:Colors.white,
        fontSize: 20,
        fontFamily: fontfamily,
        fontWeight: FontWeight.w400
      ),
      titleLarge: TextStyle(fontSize: 25,
        color: Colors.white,
        fontFamily: fontfamily,
        fontWeight: FontWeight.w700 ,
      ) ,
      titleMedium: TextStyle(fontSize: 25,
        color: Colors.white,
        fontFamily: fontfamily,
        fontWeight: FontWeight.w400 ,
      ) ,
    ),
    cardTheme: CardTheme(
      color: primaryDark,
      elevation: 12,
      surfaceTintColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryDark,
      selectedIconTheme: IconThemeData(color: secondaryDark),
      unselectedIconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryDark,
      primary: primaryDark,
      secondary: secondaryDark,
    ),
    useMaterial3: true,
  );

}