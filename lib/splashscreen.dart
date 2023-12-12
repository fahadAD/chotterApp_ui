import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.black,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [


 Center(
   child: Row(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       Text("CHOTTER",style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white), ),
       SizedBox(width: 5,),
       Icon(Icons.electric_bike_outlined,color: Colors.yellow,size: 90,)


     ],
   ),
 )        ],
      )
    );
  }
}