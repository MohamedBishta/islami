import 'package:firsttask/Provider/SettingProvider.dart';
import 'package:firsttask/UI/HomeScreen/Hadeth/HadethScreen.dart';
import 'package:firsttask/UI/HomeScreen/Quran/QuranScreen.dart';
import 'package:firsttask/UI/HomeScreen/Radio/RadioScreen.dart';
import 'package:firsttask/UI/HomeScreen/Settings/SettingScreen.dart';
import 'package:firsttask/UI/HomeScreen/Tasbeh/TasbehScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const String routName = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                settingProvider.getMainBackgroundImage(),
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedTabIndex,
            onTap: (index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: AppLocalizations.of(context)!.quranScreen),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                      AssetImage("assets/images/quran-quran-svgrepo-com.png")),
                  label: AppLocalizations.of(context)!.hadethScreen),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
                  label: AppLocalizations.of(context)!.radioScreen),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                  label: AppLocalizations.of(context)!.tasbehScreen),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settingScreen),
            ]),
        body: tabs[selectedTabIndex]
      ),
    );

  }
  var tabs = [
    QuranScreen(),
    HadethScreen(),
    Radioscreen(),
    TasbehScreen(),
    SettingScreen(),
  ];
}
