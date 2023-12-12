import 'package:flutter/material.dart';
import 'package:practise/liquidswipe.dart';
import 'package:practise/screen6.dart';
import 'package:practise/splashscreen.dart';
import 'Screen5.dart';
import 'bottomnav.dart';
import 'main1.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatefulWidget {
   const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   @override
   Widget build(BuildContext context) {

     return   MaterialApp(
       debugShowCheckedModeBanner: false,
       home:  Liquid_swipe(
           pages: [
         Splash(),
         Screen1()
       ]),
     );
   }
}
