import 'package:flutter/material.dart';
import 'package:islame_rout/quran/sura_details.dart';

class SuraItame extends StatelessWidget {
  String text;
  SuraItame({required this.text});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraDetalise.routName);
      },
            child: Text(text ,style: const TextStyle(
              fontSize: 25,fontWeight: FontWeight.w500,
            ),
              textAlign: TextAlign.center,
            ),

    );
  }
}
