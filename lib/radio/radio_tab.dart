import 'package:flutter/material.dart';
import 'package:islame_rout/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget{
  //const HadethTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/radio_image.png'),
          SizedBox(height: 35),
          Text(AppLocalizations.of(context)!.ezat_elquran_elkarem,style:
          Theme.of(context).textTheme.subtitle1,),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(onTap: (){},
                child: Icon(
                  Icons.skip_previous
                  ,
                  size: 50,
                  color: MyThemData.GoldColor,),
              ),
              InkWell(onTap: (){},
                child: Icon(
                  Icons.play_arrow_sharp,
                  size: 50,
                  color: MyThemData.GoldColor,),
              ),
              InkWell(onTap: (){},
                child: Icon(
                  Icons.skip_next,
                  size: 50,
                  color: MyThemData.GoldColor,),
              ),
            ],
          )
        
        
        ],
        
      ),
    );
  }
}
