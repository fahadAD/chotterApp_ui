import 'package:flutter/material.dart';
import 'package:practise/datamodel.dart';
class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  List<Data_model> gridList=[
    Data_model(
      name2: "Blance",
      month: "This month",
      amount: "\$25,000,00",
      percent: "\$299.00",
        image2:  "images/image2.png",
    ),
    Data_model(
        name2: "Profit",
        month: "August",
        amount: "\$5000",
        percent: "\$10%",
      image2:  "images/image3.png",
    ),
    Data_model(
        name2: "Contribution",
        month: "Runnning month",
        amount: "\$12,000",
        percent: "\$9000.00",
      image2:  "images/images8.png",
    ),
    Data_model(
        name2: "Avarage",
        month: "Per person",
        amount: "\$7000",
        percent: "\$15%",
      image2:  "images/images9.png",
    ),
  ];
List<Data_model> listtilrList=[
  Data_model(
      name1: "MD Fahad",
      image1: "images/image2.png",
      mobile: "01656786987",
    time: "10:30 am",
    amount1: "+\$1500"
  ),
  Data_model(
      name1: "MD Fahim",
      image1: "images/image3.png",
      mobile: "014780967",
      time: "11:30 am",
      amount1: "+\$1200"
  ),

  Data_model(
      name1: "MD Shahariar",
      image1: "images/image4.png",
      mobile: "015563432",
      time: "7:30 am",
      amount1: "+\$1800"
  ),
  Data_model(
      name1: "MD Adil",
      image1: "images/img.png",
      mobile: "010865444",
      time: "5:30 pm",
      amount1: "-\$600"
  ),
  Data_model(
      name1: "MD Fahad",
      image1: "images/image2.png",
      mobile: "01656786987",
      time: "10:30 am",
      amount1: "+\$1500"
  ),
  Data_model(
      name1: "MD Fahim",
      image1: "images/image3.png",
      mobile: "014780967",
      time: "11:30 am",
      amount1: "+\$1200"
  ),
];
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
       body: SingleChildScrollView(
         child: Column(
           children: [
             ListTile(
               leading: Icon(Icons.drag_handle,color: Colors.white),
               title: Text("Mahamudul Hasan",style: TextStyle(color: Colors.white)),
               trailing:  Icon(Icons.folder_copy,color: Colors.white),
             ),
             SizedBox(height: 30,),
             Text("\$25,000,00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
             SizedBox(height: 6,),
             Center(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.green,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("\$299.00",style: TextStyle(color: Colors.green,)),
                   ),
                   Text("This month",style: TextStyle(color: Colors.white)),
               ],),
             ),
             SizedBox(height: 25,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 ElevatedButton(onPressed: () {},
                     child: Row(
                       children: [
                         Icon(Icons.add_circle_outlined,color: Colors.black,),
                         Text(" Withdraw",style: TextStyle(color: Colors.white)),
                       ],
                     )),

                 ElevatedButton(onPressed: () {},
                     child: Row(
                       children: [
                         Text("  -  ",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)),
                         Text("Deposit",style: TextStyle(color: Colors.white)),
                       ],
                     )),
           ]),
             SizedBox(height: 20,),
Container(
   // height: MediaQuery.of(context).size.height,
  width: MediaQuery.of(context).size.width,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(25),
      topRight: Radius.circular(25)
    ),
  ),
  child: Column(
children: [
ListTile(leading: Text("Dashboard",style: TextStyle(fontSize: 18)),),
 GridView.builder(
   primary: false,
   shrinkWrap: true,
itemCount: gridList.length,
   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
     crossAxisCount: 2,
     mainAxisSpacing: 8,
     crossAxisSpacing: 8,
     childAspectRatio: 1,
   ),
   itemBuilder: (BuildContext context, int index) {
   return Padding(
     padding: const EdgeInsets.all(6.0),
     child: Container(
       width: MediaQuery.of(context).size.width,

       decoration: BoxDecoration(
         borderRadius: BorderRadius.only(
           topLeft: Radius.circular(15),
           bottomLeft: Radius.circular(15),
           bottomRight: Radius.circular(15),

         ),
             color: Colors.black.withOpacity(0.2)
       ),
       child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           ListTile(
             leading: CircleAvatar(
           backgroundColor: Colors.white,
 backgroundImage: AssetImage("${gridList[index].image2}"),

             ),
             title: Text("${gridList[index].name2}"),
             subtitle: Text("${gridList[index].month}"),

           ),
           Text("   ${gridList[index].amount}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ListTile(
             leading: Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.teal),
       title: Text("${gridList[index].percent}",style: TextStyle(color: Colors.green)),
              trailing: Icon(Icons.insights),

           ),
         ],
       ),
     ),
   );
 },
 ),
  ListTile(leading: Text("Recent Transactions",style: TextStyle(fontSize: 18)),),

SizedBox(
  child:   ListView.builder(
primary: false,
     shrinkWrap: true,

    itemCount: listtilrList.length,

    itemBuilder: (BuildContext context, int index) {

   return Card(
     elevation: 5,
     child: ListTile(

      leading: CircleAvatar(

        backgroundImage: AssetImage("${listtilrList[index].image1}"),



      ),

       title: Text("${listtilrList[index].name1}",style: TextStyle(fontWeight: FontWeight.bold)),

     subtitle: Text("${listtilrList[index].mobile}"),

       trailing: Column(

       children: [

         Text("${listtilrList[index].amount1}",style: TextStyle(fontWeight: FontWeight.bold)),

         Text("${listtilrList[index].time}"),

       ],

       ),

     ),
   );

  },



  ),
)

],  ),
)
           ],
         ),
       ),
      ),
    );
  }
}
