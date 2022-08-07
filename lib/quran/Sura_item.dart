import 'package:flutter/material.dart';
import 'package:islame_rout/quran/sura_details.dart';

class SuraItame extends StatelessWidget {
  String text;
  int index;
  SuraItame({required this.text,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraDetalise.routName,
        arguments: SuraDetailsArges(name: text, index: index)
        );
      },
            child: Text(text ,style: Theme.of(context).textTheme.subtitle2

              ,
              textAlign: TextAlign.center,
            ),

    );
  }
}
