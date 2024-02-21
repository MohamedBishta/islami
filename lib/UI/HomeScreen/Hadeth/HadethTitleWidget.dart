import 'package:firsttask/UI/HomeScreen/Hadeth/Hadeth.dart';
import 'package:flutter/material.dart';

class HadethTitleWidget extends StatelessWidget {
  HadethTitleWidget(this.hadeth,{super.key});
  Hadeth hadeth ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(hadeth.title,style: TextStyle(fontSize: 24),)),
    );
  }

}


