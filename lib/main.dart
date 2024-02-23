import 'package:firsttask/UI/HomeScreen/Hadeth/HadethDetials.dart';
import 'package:firsttask/UI/HomeScreen/Hadeth/HadethScreen.dart';
import 'package:firsttask/UI/HomeScreen/HomePage.dart';
import 'package:firsttask/UI/MyThemeData.dart';
import 'package:firsttask/UI/suraDetails/SuraDetails.dart';
import 'package:firsttask/UI/HomeScreen/Radio/RadioScreen.dart';
import 'package:firsttask/UI/HomeScreen/Tasbeh/TasbehScreen.dart';
import 'package:firsttask/UI/Splash/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      title: 'Islami',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: MyThemeData.light,
      darkTheme: MyThemeData.dark ,
      themeMode: ThemeMode.dark,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomePage.routName: (context) => HomePage(),
        TasbehScreen.routeName: (context) => TasbehScreen(),
        Radioscreen.routeName: (context) => Radioscreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName:(context) => HadethDetails(),
        HadethScreen.routeName: (context) => HadethScreen(),
      },
    );
  }
}
