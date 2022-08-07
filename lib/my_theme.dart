import 'package:flutter/material.dart';

class MyThemData{

  static Color GoldColor =Color(0xffB7935F);
  static Color GoldSbColor2 =Color(0xffBFA176);
  static Color BlackColor =Color(0xff242424);
  static Color WhitColor =Colors.white;
  static Color DarkColor =Color(0xff0F1424);
  static Color DarkC1 =Color(0xff707070);
  //static Color DarkColor =Color(0xff0F1424);


  static final ThemeData LightMode =ThemeData(
    primaryColor: GoldColor,
      scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black
      ),
      // ignore: deprecated_member_use

    ),
      textTheme: TextTheme(
        subtitle2: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold,color: BlackColor,
        ),
        headline5: TextStyle(
          fontSize: 35,fontWeight: FontWeight.bold,color: BlackColor,
        ) ,
        headline3: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          color: BlackColor,
          fontSize: 35,
          fontWeight: FontWeight.w300,
        ),

        subtitle1: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.w400,
        ),

      ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: BlackColor,
      unselectedItemColor: WhitColor,

    )
  );


  static final ThemeData DarktMode =ThemeData(

    primaryColor: DarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
          color: Colors.white
      ),
      // ignore: deprecated_member_use

    ),

      textTheme: TextTheme(
        subtitle2: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold,color: WhitColor,
        ),
        headline5:TextStyle(
          fontSize: 35,fontWeight: FontWeight.bold,color: BlackColor,
        ) ,
        headline3: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
        color: Colors.white,
        fontSize: 35,
        fontWeight: FontWeight.w300,
      ),
        subtitle1: TextStyle(
          color: WhitColor,
          fontSize: 28,
          fontWeight: FontWeight.w400,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedItemColor: DarkColor,
        unselectedItemColor: WhitColor,

      )

  );
}