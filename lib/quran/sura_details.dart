import 'package:flutter/material.dart';

class SuraDetalise extends StatelessWidget {
 static String routName='SuraDetalise';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Image.asset('assets/images/back_ground.png',
      fit: BoxFit.fill,
      width: double.infinity,),
    Scaffold(
    //backgroundColor: Colors.transparent,
    appBar: AppBar(
    title: Text('Islame',style:
    Theme.of(context).textTheme.headline4
    , ),
    //backgroundColor: Colors.transparent,
    ),
    ),
    ],
    );
  }
}
