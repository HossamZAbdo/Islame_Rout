import 'package:flutter/material.dart';
import 'package:islame_rout/my_theme.dart';
import 'package:islame_rout/providers/provider.dart';
import 'package:islame_rout/settings/language_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Theme_bottom_sheet.dart';

class SettingTab extends StatefulWidget{

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          SizedBox(height: 50,),
          Row(
            children: [
              Text(AppLocalizations.of(context)!.language,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: (){
                  showLanguageBottomSheet();
                },
                child: Container(
                  height: 60,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: MyThemData.GoldColor,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(provider.appLanguage == 'en' ? 'English':'Arabic',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Icon(Icons.arrow_drop_down_outlined,size: 40,)
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 30,),
          Row(
            children: [
              Text(AppLocalizations.of(context)!.theming,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: (){
                  showThemeBottomSheet();
                },
                child: Container(
                  width: 130,
                  height: 60,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: MyThemData.GoldColor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(provider.appTheme == ThemeMode.light ? 'Light' : 'Dark',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Icon(Icons.arrow_drop_down_outlined,size: 35,)
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context){
          return LanguageBottomSheet();
        }
    );
  }


  void showThemeBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context){
          return ThemeBottomSheet();
        }
    );
  }
}
