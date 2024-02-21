import 'package:firsttask/UI/suraDetails/verseItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'suraDetails';
  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsarg args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsarg;
    if (versesList.isEmpty) loadSoura(args.suraNum);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/backgrounding.jpg"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.suraName),
        ),
        body: versesList.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Container(
          margin: EdgeInsets.symmetric(vertical: 40,horizontal: 15),
              child: Card(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return verseItem(versesList[index]);
                    },
                    itemCount: versesList.length,
                    separatorBuilder: (_, __) {
                      return Container(
                        color: Theme.of(context).primaryColor,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                        height: 2,
                        width: double.infinity,
                      );
                    },
                  ),
              ),
            ),
      ),
    );
  }

  loadSoura(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index}.txt');
    List<String> verses = fileContent.trim().split("\n");
    setState(() {
      versesList = verses;
    });
  }
}

class SuraDetailsarg {
  int suraNum;
  String suraName;
  SuraDetailsarg(this.suraName, this.suraNum);
}
