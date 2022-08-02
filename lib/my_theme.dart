import 'package:flutter/material.dart';

class MyThemData{

  static Color GoldColor =Color(0xffB7935F);
  static Color BlackColor =Color(0xff242424);
  static Color WhitColor =Colors.white;


  static final ThemeData LightMode =ThemeData(
    primaryColor: GoldColor,
      scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      // ignore: deprecated_member_use

    ),
      textTheme: TextTheme(
        subtitle2: TextStyle(
          fontSize: 50,fontWeight: FontWeight.bold,color: BlackColor,
        ),
        headline5:TextStyle(
          fontSize: 50,fontWeight: FontWeight.bold,color: BlackColor,
        ) ,
        headline3: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),


    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: BlackColor,
      unselectedItemColor: WhitColor,

    )
  );
  static final ThemeData DarktMode =ThemeData(

  );
}