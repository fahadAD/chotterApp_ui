import 'package:flutter/material.dart';
import 'package:practise/Screen5.dart';
import 'package:practise/liquidswipe.dart';
import 'package:practise/splashScreen.dart';

import 'main1.dart';
import 'man3.dart';
class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:  SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 160,),
              Center(
                child: Container(
                  child: Image.asset("images/images9.png",width: 160,height: 160),
                ),
              ),
              SizedBox(height: 30,),

              Center(child: Text("Intelligent Assistant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.black))),
              SizedBox(height: 20,),
              Center(child: Text("              Welcome to the age of AI!\n Someone asked you something you don’t\n     know? Not a problem! Ask ‘Buddy’ for\n     assistance and it will give you a hand",style: TextStyle(color: Colors.black),)),

              SizedBox(height: 165,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Screen5(),));
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width*0.8,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Get Started",style: TextStyle(color: Colors.black,fontSize: 19))),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
