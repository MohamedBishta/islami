import 'package:firsttask/UI/HomeScreen/Hadeth/HadethScreen.dart';
import 'package:firsttask/UI/HomeScreen/HomePage.dart';
import 'package:firsttask/UI/suraDetails/SuraDetails.dart';
import 'package:firsttask/UI/HomeScreen/Radio/RadioScreen.dart';
import 'package:firsttask/UI/HomeScreen/Tasbeh/TasbehScreen.dart';
import 'package:firsttask/UI/Splash/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami',
      theme: ThemeData(
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
          backgroundColor: Color(0xFFB7935F),
          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedIconTheme: IconThemeData(color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB7935F),
          primary: Color(0xFFB7935F),
        ),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomePage.routName: (context) => HomePage(),
        TasbehScreen.routeName: (context) => TasbehScreen(),
        Radioscreen.routeName: (context) => Radioscreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethScreen.routeName: (context) => HadethScreen(),
      },
    );
  }
}
