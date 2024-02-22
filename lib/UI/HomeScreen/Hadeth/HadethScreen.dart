import 'package:firsttask/UI/HomeScreen/Hadeth/Hadeth.dart';
import 'package:firsttask/UI/HomeScreen/Hadeth/HadethTitleWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethScreen extends StatefulWidget {
  static const String routeName = 'hadethPage';
  HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<Hadeth> allHadeth = [];

  @override
  Widget build(BuildContext context) {
     if (allHadeth.isEmpty)
      loadHadethFile();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
            child: Image.asset("assets/images/hadeth_logo.png")),
        Expanded(
          flex: 3,
          child: Container(
            child: allHadeth.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return HadethTitleWidget(allHadeth[index]);
                    },
                    itemCount: allHadeth.length,
                    separatorBuilder: (_, __) {
                      return Container(
                        color: Theme.of(context).colorScheme.secondary,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                        height: 2,
                        width: double.infinity,
                      );
                    },
                  ),
          ),
        ),
      ],
    );
  }

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadethContent = fileContent.trim().split("#");
    for (int i = 0; i < ahadethContent.length; i++) {
      String singleHadethContent = ahadethContent[i].trim();
      String title =
          singleHadethContent.substring(0, singleHadethContent.indexOf("\n"));
      String content =
          singleHadethContent.substring(singleHadethContent.indexOf("\n")+1);
      Hadeth hadeth = Hadeth(title, content);
      allHadeth.add(hadeth);
    }
    setState(() {

    });
  }
}
