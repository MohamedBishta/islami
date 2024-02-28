import 'package:firsttask/Provider/SettingProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShowLanguageBottomSheet extends StatefulWidget {
  const ShowLanguageBottomSheet({super.key});

  @override
  State<ShowLanguageBottomSheet> createState() => _ShowLanguageBottomSheetState();
}

class _ShowLanguageBottomSheetState extends State<ShowLanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
              settingProvider.changeLocale('ar');
              Navigator.pop(context);
            },
              child: settingProvider.selectedLocal == 'ar' ?
              getSelectedIndex("Arabic"):
                  getUnSelectedIndex("Arabic")
          ),
          SizedBox(height: 12,),
          InkWell(
            onTap: (){
              settingProvider.changeLocale('en');
              Navigator.pop(context);
            },
              child: settingProvider.selectedLocal == 'en'? getSelectedIndex("English"):
                  getUnSelectedIndex("English")
          ),
        ],
      ),
    );
  }

  Widget getSelectedIndex(String text){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),),
        Icon(Icons.check,color: Theme.of(context).colorScheme.secondary,),
      ],
    );
  }
  Widget getUnSelectedIndex(String text){
    return  Text(text) ;
  }
}
