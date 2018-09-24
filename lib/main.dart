import 'package:flutter/material.dart';
import 'calculator_app.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: new Calculate(),
      );
    
  }
}