import 'package:flutter/material.dart';
import 'package:practise/datamodel.dart';
import 'package:practise/screen6.dart';

import 'bottomnav.dart';
class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
   List<Data_model> listlile_list1=[
     Data_model(
       email1: "mrfahad@gmail.com",
       name1: "MD Fahad",
         image1: "images/image2.png"
     ),
     Data_model(
         email1: "mrfshim@gmail.com",
         name1: "MD Fahim",
         image1: "images/image3.png"
     ),
     Data_model(
         email1: "mrshahariar@gmail.com",
         name1: "MD Shahariar",
         image1: "images/image4.png"
     ),
     Data_model(
         email1: "mrwrtyhh@gmail.com",
         name1: "MD Adil",
         image1: "images/img.png"
     ),
     Data_model(
         email1: "mrfahad@gmail.com",
         name1: "MD Fahad",
         image1: "images/image2.png"
     ),
     Data_model(
         email1: "mrfshim@gmail.com",
         name1: "MD Fahim",
         image1: "images/image3.png"
     ),
     Data_model(
         email1: "mrshahariar@gmail.com",
         name1: "MD Shahariar",
         image1: "images/image4.png"
     ),
     Data_model(
         email1: "mrwrtyhh@gmail.com",
         name1: "MD Adil",
         image1: "images/img.png"
     ),
   ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading:  IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white),
          tooltip: 'More Button',
          onPressed: () {
             Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text("Group Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
      actions: [
        IconButton(
        icon: const Icon(Icons.more_horiz,color: Colors.white),
        tooltip: 'More Button',
        onPressed: () {
          // handle the press
        },
      ),
      ],
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 30,),
            Container(
               width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                )
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("images/img.png"),
                    ),
                    SizedBox(height: 14,),
                    Text("Qrius",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.black),),
                    SizedBox(height: 15,),
Row(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Column(
      children: [
        Icon(Icons.mobile_screen_share,color: Colors.black,),
        SizedBox(height: 6,),
        Text("Share",style: TextStyle(color: Colors.black),)
      ],
    ),
    Column(
      children: [
        Icon(Icons.person_add_alt_1,color: Colors.black,),
        SizedBox(height: 6,),
        Text("Add",style: TextStyle(color: Colors.black),)
      ],
    ),
    Column(
      children: [
        Icon(Icons.copy,color: Colors.black,),
        SizedBox(height: 6,),
        Text("Code",style: TextStyle(color: Colors.black),)
      ],
    ),
  ],
),
                    SizedBox(height: 8,),
                    Divider(
                      thickness: 5,
                    ),
                    Text("This is the shirt description for the this group. And it\n must be very interesting.",style: TextStyle(color: Colors.tealAccent)),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Created by Fahim Shahariar, 8/23/34 10:04 PM",style: TextStyle(color: Colors.black)),
                   ),
                    Divider(
                      thickness: 5,
                    ),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ListTile(

    leading: Text("All members",style: TextStyle( color: Colors.black,fontSize: 17)),

    trailing: Icon(Icons.search,color: Colors.black),

  ),
),

   SizedBox(

     child: ListView.builder(
primary: false,
      shrinkWrap: true,
       scrollDirection: Axis.vertical,
      itemCount: listlile_list1.length,
      itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          elevation: 5,
          child: ListTile(

            leading: CircleAvatar(
              radius: 30,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("${listlile_list1[index].image1}"),
            ),
            title: Text("${listlile_list1[index].name1}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
            subtitle: Text("${listlile_list1[index].email1}",),
          trailing: Icon(Icons.more_vert,color: Colors.black),
          ),
        ),
      );
  },

  ),
   ),

                    Divider(
                      thickness: 5,
                    ),
                    ListTile(
                     leading: CircleAvatar(
                         backgroundColor: Colors.black,
                         child: Icon(Icons.settings,color: Colors.white,)),
                      title: Text("Group Setting",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(Icons.close,color: Colors.white,)),
                      title: Text("Close Group",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation(),));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width*0.8,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(child: Text("Get Started",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
