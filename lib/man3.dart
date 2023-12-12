import 'package:flutter/material.dart';
import 'package:practise/main4.dart';

import 'main2.dart';
class Screen3 extends StatelessWidget {
  const Screen3({super.key});

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
                  child: Image.asset("images/images8.png",width: 160,height: 160),
                ),
              ),
              SizedBox(height: 30,),

              Center(child: Text("Protect your identity",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.black))),
              SizedBox(height: 25,),
              RichText(
                text: TextSpan(

                  text: '',
                  children: const <TextSpan>[
                    TextSpan(text:  "Only your username is visible to others,\n             everything else is private.", style: TextStyle(color: Colors.black,)),

                  ],
                ),
              ),
              SizedBox(height: 15,),
              RichText(
                text: TextSpan(
                  text: '',
                  children: const <TextSpan>[
                     TextSpan(text:  "The more you get to know others the more\n             you can reveal about yourself.", style: TextStyle(color: Colors.black,)),

                  ],
                ),
              ),
              SizedBox(height: 150,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Screen4(),));
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
