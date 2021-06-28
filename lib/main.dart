import 'package:ecomui/card.dart';
import 'package:ecomui/home.dart';
import 'package:ecomui/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("E-Commerce UI", style: TextStyle(color: Colors.black87),),
          backgroundColor: Colors.white,
        ),
        // body: MyCard(),
        body: Screen(),
        // 
        ),
        
      
        );
    }
    
  
}