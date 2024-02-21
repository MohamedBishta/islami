import 'package:firsttask/UI/HomeScreen/Hadeth/Hadeth.dart';
import 'package:flutter/material.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'HadethDetials';
  HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/backgrounding.jpg"),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text("${hadeth.title}"),
          ),
          body: Container(
            height: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Card(
                child: SingleChildScrollView(
                  child: Text(
                    "${hadeth.content}",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}