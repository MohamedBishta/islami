import 'package:flutter/material.dart';

class verseItem extends StatelessWidget {
  verseItem(this.Content, {super.key});
  String Content;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        textAlign:TextAlign.center ,
        Content,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
