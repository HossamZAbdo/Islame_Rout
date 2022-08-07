import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_rout/my_theme.dart';
import 'package:islame_rout/quran/Sura_Detales_Itames.dart';

class SuraDetalise extends StatefulWidget {
  static String routName = 'SuraDetalise';

  @override
  State<SuraDetalise> createState() => _SuraDetaliseState();
}

class _SuraDetaliseState extends State<SuraDetalise> {
  List<String> Verses = [];
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArges;
    Lodefile(args.index);
    return Stack(
      children: [
        Image.asset(
          'assets/images/back_ground.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          //backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              '${args.name}',
              style: Theme.of(context).textTheme.headline5,
            ),
            //backgroundColor: Colors.transparent,
          ),
          body: ListView.separated(
              itemBuilder: (context, index) {
                return Verses.length == 0
                    ? Center(
                        child: CircularProgressIndicator(
                          backgroundColor: MyThemData.GoldColor,
                        ),
                      )
                    : SuraDetailsItem(text: Verses[index], index: index);
              },
              separatorBuilder: (context, index) {
                return  Divider(
                  color: MyThemData.GoldColor,
                  thickness: 2,
                );
              },
              itemCount: Verses.length),
        ),
      ],
    );
  }

  void Lodefile(int index) async {
    var filecontent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> Lines = filecontent.split('/n');
    Verses = Lines;
    setState(() {});
  }
}

class SuraDetailsArges {
  String name;
  int index;
  SuraDetailsArges({required this.name, required this.index});
}
