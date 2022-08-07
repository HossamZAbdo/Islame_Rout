import 'package:flutter/material.dart';
import 'package:islame_rout/hadeth/hadeth_tab.dart';
import 'package:islame_rout/my_theme.dart';
import 'package:islame_rout/providers/provider.dart';
import 'package:islame_rout/quran/quran_tab.dart';
import 'package:islame_rout/radio/radio_tab.dart';
import 'package:islame_rout/settings/settings.dart';
import 'package:islame_rout/tasbeh/tasbeh_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
    static const String routName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    int curant_index =0;

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);

    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            provider.isDarkMode() ?
            'assets/images/dark_bac_ground.png'
                :
            'assets/images/back_ground.png',
          fit: BoxFit.fill,
          width: double.infinity,),
          Scaffold(
            //backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.islame,
                style:
                Theme.of(context).textTheme.headline4
                , ),
              //backgroundColor: Colors.transparent,
            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
               canvasColor: MyThemData.GoldColor
              ),
              child: BottomNavigationBar(
                currentIndex: curant_index,
                onTap: (index){
                  curant_index = index;
                  setState((){
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage('assets/images/ic_quran.png')
                    ),
                    label: AppLocalizations.of(context)!.quran,
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                          AssetImage('assets/images/ic_hades.png')
                      ),
                      label: AppLocalizations.of(context)!.hadeth,
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                          AssetImage('assets/images/ic_sebha.png')
                      ),
                      label: AppLocalizations.of(context)!.tasbeh,
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                          AssetImage('assets/images/ic_radio.png')
                      ),
                      label: AppLocalizations.of(context)!.radio,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),

                    label: AppLocalizations.of(context)!.settings,
                  ),
                ],

              ),
            ),
            body: tabs[curant_index],
          )
        ],
      ),
    );
  }
  List<Widget> tabs=[
    QuranTab(),HadethTab(),TasbehTab(),RadioTab(),SettingTab()
  ];
}
