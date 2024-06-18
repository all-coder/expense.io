import 'package:flutter/material.dart';
import './screens/home.dart';

//############################LifeSYNC##################################

//a personal expense/event , built for me(yeah i am building it for me)
//personally aimed at writing cleaner code
//unfortunately apps like this have been already built, i acknowledge it, 
//yet i simply want to make my own, prefarebly use some ai tools



void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
