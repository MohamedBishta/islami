import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingProvider extends ChangeNotifier{

  String selectedLocal = 'en';
  ThemeMode selectedTheme = ThemeMode.light;
  late SharedPreferences prefs;

  SettingProvider() {
    loadPreferences();
  }

  void loadPreferences() async {
    prefs = await SharedPreferences.getInstance();
    selectedLocal = prefs.getString('selectedLocal') ?? 'en';
    selectedTheme = themeModeFromString(prefs.getString('selectedTheme') ?? 'light');
    notifyListeners();
  }

  void changeLocale (String newLocale){
    selectedLocal = newLocale ;
    prefs.setString('selectedLocal', selectedLocal);
    notifyListeners();
  }
  void changeTheme (ThemeMode newTheme){
    selectedTheme = newTheme ;
    prefs.setString('selectedTheme', themeModeToString(selectedTheme));
    notifyListeners();
  }
  bool isDarkEnable(){
    return selectedTheme == ThemeMode.dark;
  }
   String getMainBackgroundImage(){
    return isDarkEnable() ? "assets/images/background_dark.jpg" :
    "assets/images/backgrounding.jpg" ;
  }
   String getSplashBackgroundImage(){
    return  isDarkEnable() ? "assets/images/splash_dark.jpg" :
    "assets/images/splash.jpg" ;
  }
  Locale getLocale() {
    if (selectedLocal == 'ar') {
      return Locale('ar', 'SA');
    }
    return Locale('en', 'US');
  }
  ThemeMode themeModeFromString(String themeString) {
    return themeString == 'dark' ? ThemeMode.dark : ThemeMode.light;
  }

  String themeModeToString(ThemeMode themeMode) {
    return themeMode == ThemeMode.dark ? 'dark' : 'light';
  }


}