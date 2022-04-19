import 'package:flutter/material.dart';
import 'package:todo/ui/home/home_screen.dart';
import 'package:todo/ui/home/my_theme.dart';

void main(){
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        HomeScreen.ROUTE_NAME:(buildContext)=>HomeScreen(),
      },
      initialRoute: HomeScreen.ROUTE_NAME,
      theme: MyThemeData.lightTheme,
    );
  }
  
}