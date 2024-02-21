import 'package:firsttask/UI/HomeScreen/HomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName ='SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context,HomePage.routName);
      },
    );
    return Scaffold(
      body: Image.asset("assets/images/splash.jpg",
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
