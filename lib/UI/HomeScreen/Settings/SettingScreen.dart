import 'package:firsttask/Provider/SettingProvider.dart';
import 'package:firsttask/UI/HomeScreen/Settings/ShowLanguageBottomSheet.dart';
import 'package:firsttask/UI/HomeScreen/Settings/ShowThemeBottomSheet.dart';
import 'package:firsttask/UI/MyThemeData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 64,horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language),
          InkWell(
            onTap: (){
              showLanguageBottomSheet(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  border: Border.all(
                    color: MyThemeData.secondaryDark,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: Text(settingProvider.selectedLocal=='ar'?"العربيه":
              "English"),
            ),
          ),
          Text(AppLocalizations.of(context)!.theme),
          InkWell(
            onTap: (){
              showThemeBottomSheet(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  border: Border.all(
                    color: MyThemeData.secondaryDark,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                settingProvider.isDarkEnable()?
                  AppLocalizations.of(context)!.dark:
                  AppLocalizations.of(context)!.light
              ),
            ),
          ),
        ],
      ),
    );
  }
  void showLanguageBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context) => ShowLanguageBottomSheet());
  }
  void showThemeBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context) => ShowThemeBottomSheet());
  }
}
