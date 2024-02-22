import 'package:firsttask/UI/suraDetails/SuraDetails.dart';
import 'package:flutter/material.dart';

class SouraWidget extends StatelessWidget {
  SouraWidget(this.text,this.versesNumber,{super.key});
String text ;
int versesNumber ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
          arguments: SuraDetailsarg(text,versesNumber),
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(text,style: Theme.of(context).textTheme.titleMedium,)),
    );
  }

}


