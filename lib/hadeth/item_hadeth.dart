import 'package:flutter/material.dart';
import 'package:islame_rout/hadeth/hadeth_details.dart';
import 'package:islame_rout/hadeth/hadeth_tab.dart';



class ItemHadeth extends StatelessWidget {
Hadeth hadeth ;
ItemHadeth({required this.hadeth});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetails.routeName,
            arguments: hadeth
        );
      },
      child: Text(hadeth.title,
        style: Theme.of(context).textTheme.subtitle2

        //TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
        ,
        textAlign: TextAlign.center,
      ),

    );
  }
}
