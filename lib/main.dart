import 'package:flutter/material.dart';
import 'package:islame_rout/Home_Screen.dart';
import 'package:islame_rout/my_theme.dart';
import 'package:islame_rout/quran/sura_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SuraDetalise.routName:(context) => SuraDetalise(),
      },
        theme: MyThemData.LightMode,
        darkTheme: MyThemData.DarktMode,
    );
  }
}