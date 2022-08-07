import 'package:flutter/material.dart';
import 'package:islame_rout/Home_Screen.dart';
import 'package:islame_rout/hadeth/hadeth_details.dart';
import 'package:islame_rout/my_theme.dart';
import 'package:islame_rout/providers/provider.dart';
import 'package:islame_rout/quran/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islame_rout/settings/settings.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SuraDetalise.routName:(context) => SuraDetalise(),
        HadethDetails.routeName:(context) => HadethDetails(),
      },
        theme: MyThemData.LightMode,
        darkTheme: MyThemData.DarktMode,

        themeMode: provider.appTheme,

      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

    );
  }
}