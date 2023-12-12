import 'package:flutter/material.dart';
import 'package:practise/man3.dart';
class Screen2 extends StatelessWidget {
  const Screen2({super.key});

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
      child: Image.asset("images/images7.png",width: 160,height: 160),
 ),
  ),
              SizedBox(height: 30,),

Center(child: Text("Anywhere, anytime...",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.black87))),
 SizedBox(height: 20,),
              Center(child: Text("Come and socialize with people around you in\n your unique way. Find your favourite hangout\n            spot without actually being there.",style: TextStyle(color: Colors.black),)),

              SizedBox(height: 170,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Screen3(),));
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
