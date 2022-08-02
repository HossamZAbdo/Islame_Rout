import 'package:flutter/material.dart';
import 'package:islame_rout/hadeth_tab.dart';
import 'package:islame_rout/my_theme.dart';
import 'package:islame_rout/quran/quran_tab.dart';
import 'package:islame_rout/radio_tab.dart';
import 'package:islame_rout/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
    static const String routName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    int curant_index =0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
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
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
               canvasColor: MyThemData.GoldColor
              ),
              child: BottomNavigationBar(
                currentIndex: curant_index,
                onTap: (index){
                  curant_index = index;
                  setState((){

                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_quran.png')
                    ),
                    label: 'Quran'
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                          AssetImage('assets/images/ic_hades.png')
                      ),
                      label: 'hades'
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                          AssetImage('assets/images/ic_sebha.png')
                      ),
                      label: 'sebha'
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                          AssetImage('assets/images/ic_radio.png')
                      ),
                      label: 'radio'
                  ),
                ],

              ),
            ),
            body: tabs[curant_index],

          )

        ],

      ),
    );
  }
  List<Widget> tabs=[
    QuranTab(),HadethTab(),TasbehTab(),RadioTab()
  ];
}
