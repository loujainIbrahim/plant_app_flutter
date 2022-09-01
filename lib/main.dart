import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_flutter/const.dart';
import 'package:plant_app_flutter/detailes_recommanded.dart';
import 'package:plant_app_flutter/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:BackgroundColor,
        primaryColor: PrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor:TextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home:HomeScreen() ,
      debugShowCheckedModeBanner:false   
       );
  }
}
