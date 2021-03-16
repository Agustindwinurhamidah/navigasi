import 'package:flutter/material.dart';
import 'package:navigasi/pages/home_page.dart';
import 'package:navigasi/pages/item_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/',
      routes :{
        '/':(context)=>HomePage(),
        '/item':(context)=>ItemPage(),
      },
    );
  }
}