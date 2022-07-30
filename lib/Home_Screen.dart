import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
    static const String routName='home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: Text('Islame'),
        backgroundColor: Colors.lightBlueAccent,
      ),

    );
  }
}
