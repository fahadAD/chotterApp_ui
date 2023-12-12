import 'package:flutter/material.dart';
import 'package:practise/main2.dart';
import 'package:practise/splashScreen.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {

    return   SafeArea(
      child: Scaffold(

         body: SingleChildScrollView(

           child: Column(
            children: [
      SizedBox(height: 80,),
      Center(child: Image(image: AssetImage("images/images6.png"),width: MediaQuery.of(context).size.width*0.9)),

 Center(
     child: Text("Welcome to Hangout Spot",
   style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),)),
SizedBox(height: 35,),
              RichText(
                text: TextSpan(
                  text: '',
                  children: const <TextSpan>[
                    TextSpan(text: 'Please read our ', style: TextStyle(color: Colors.black)),
                    TextSpan(text: 'Privacy Policy.', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.cyan)),

                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '',
                  children: const <TextSpan>[
                    TextSpan(text: 'Click “Agree & Proceed” to accept the ', style: TextStyle(color: Colors.black)),
                    TextSpan(text: 'Terms', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.cyan)),

                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '',
                  children: const <TextSpan>[
                     TextSpan(text: 'of Service.', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.cyan)),

                  ],
                ),
              ),
SizedBox(height: 90,),
              GestureDetector(
                onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2(),));
                },
                child: Container(
                  height: 47,
                  width: MediaQuery.of(context).size.width*0.8,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Agree & Proceed",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19))),
                ),
              )
            ],
        ),
         ),
      ),
    );
  }
}
