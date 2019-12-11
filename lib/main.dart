import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/home_screens.dart';
import 'package:loja_virtual/screens/login_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter's Clothing'",
      theme: ThemeData(   
        primarySwatch: Colors.grey,
        primaryColor: Colors.black
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}


