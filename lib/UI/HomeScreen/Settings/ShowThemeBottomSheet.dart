import 'package:firsttask/Provider/SettingProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ShowThemeBottomSheet extends StatefulWidget {
  const ShowThemeBottomSheet({super.key});

  @override
  State<ShowThemeBottomSheet> createState() => _ShowThemeBottomSheetState();
}

class _ShowThemeBottomSheetState extends State<ShowThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                settingProvider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: settingProvider.isDarkEnable()
                  ? getUnSelectedIndex(AppLocalizations.of(context)!.light)
                  : getSelectedIndex(AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                settingProvider.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: settingProvider.isDarkEnable()
                  ? getSelectedIndex(AppLocalizations.of(context)!.dark)
                  : getUnSelectedIndex(AppLocalizations.of(context)!.dark)),
        ],
      ),
    );
  }

  Widget getSelectedIndex(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }

  Widget getUnSelectedIndex(String text) {
    return Text(text);
  }
}
