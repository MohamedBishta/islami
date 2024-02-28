import 'package:firsttask/Provider/SettingProvider.dart';
import 'package:firsttask/UI/HomeScreen/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName ='SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    Future.delayed(Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context,HomePage.routName);
      },
    );
    return Scaffold(
      body: Image.asset(settingProvider.getSplashBackgroundImage(),
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
