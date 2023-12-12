import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:practise/Screen5.dart';
import 'package:practise/screen6.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int pages_index=0;
  final pagess=[
    Screen6(),
    Screen5(),
    Screen6(),
    Screen5(),
    Screen6(),
  ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: pagess[pages_index],
 bottomNavigationBar: CurvedNavigationBar(
   color: Colors.blue,
     backgroundColor: Colors.white,
     index: pages_index,
     buttonBackgroundColor: Colors.black,
     animationDuration: Duration(milliseconds: 100),
     animationCurve: Curves.easeIn,
height: 60.0,
     onTap: (value) {
       setState(() {
         pages_index=value;
       });
     },
     items: [
       Icon(Icons.home_filled,color: Colors.white),
       Icon(Icons.payment,color: Colors.white),
       Icon(Icons.grid_view_outlined,color: Colors.white,size: 30),
       Icon(Icons.home_outlined,color: Colors.white),
       Icon(Icons.person_pin,color: Colors.white),

     ]),
    );
  }
}
