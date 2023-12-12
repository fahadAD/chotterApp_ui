import 'package:flutter/material.dart';
import 'package:practise/splashScreen.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'main1.dart';
class Liquid_swipe extends StatelessWidget {
  const Liquid_swipe({super.key, required List<Widget> pages});

  @override
  Widget build(BuildContext context) {
    final _pages=[
      Splash(),
      Screen1()
    ];
    return   Scaffold(
      body: LiquidSwipe(pages: _pages),

    );
  }
}
