import 'package:flutter/material.dart';
import 'hadeth_Detales_Itames.dart';
import 'package:islame_rout/hadeth/hadeth_Detales_Itames.dart';

import 'hadeth_tab.dart';


class HadethDetails extends StatelessWidget {
  static String routeName = 'hadeth_details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Stack(children: [
      Image.asset(
        'assets/images/back_ground.png',
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text( args.title,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        body: HadethDetailsItem(content: args.content),
      ),
    ]);
  }
}