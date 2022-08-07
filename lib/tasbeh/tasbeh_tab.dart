import 'package:flutter/material.dart';
import 'package:islame_rout/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasbehTab extends StatefulWidget{
  int counter=0;

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter=0;
  //const HadethTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Image.asset('assets/images/head of seb7a.png',
            width: 70,height: 70,),
          InkWell(
            onTap: (){
               counter++;
                Transform(
                  transform: Matrix4.rotationZ(3.1415926535897932 / 4),
                child:  Image.asset('assets/images/body of seb7a.png',
                  width: 170,height: 170,),
                );
                setState((){});

                print(counter);
            },
            child: Image.asset('assets/images/body of seb7a.png',
            width: 170,height: 170,),
          ),


          SizedBox(height: 35),
          Text(AppLocalizations.of(context)!.number_of_tasbeh,style:
          Theme.of(context).textTheme.subtitle1,),
          SizedBox(height: 20),
          Container(width: 50,height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:MyThemData.GoldSbColor2
            ),
            child:
            Center(child: Text('$counter',style: TextStyle(fontSize: 30))),
          ),
          SizedBox(height: 30),
           Container(
             width: 150,
              height: 50,
             decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:MyThemData.GoldColor,

        ),
             child: Center(child: Text('الحمد لله',style: TextStyle(
                 fontSize: 30,color: MyThemData.WhitColor),))),
        ],

      ),
    );
  }
}
