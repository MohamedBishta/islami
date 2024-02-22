import 'package:firsttask/UI/HomeScreen/Hadeth/HadethScreen.dart';
import 'package:firsttask/UI/HomeScreen/Quran/QuranScreen.dart';
import 'package:firsttask/UI/HomeScreen/Radio/RadioScreen.dart';
import 'package:firsttask/UI/HomeScreen/Tasbeh/TasbehScreen.dart';
import 'package:firsttask/UI/MyThemeData.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routName = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                MyThemeData.getMainBackgroundImage(),
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("islami"),
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
                  label: 'Quran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(
                      AssetImage("assets/images/quran-quran-svgrepo-com.png")),
                  label: 'Ahadeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                  label: 'Sebha'),
            ]),
        body: tabs[selectedTabIndex]
      ),
    );

  }
  var tabs = [
    QuranScreen(),
    HadethScreen(),
    Radioscreen(),
    TasbehScreen() ];
}
