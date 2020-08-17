import 'package:FoodApp/src/widgets/cutom_list_widget.dart';
import 'package:FoodApp/src/widgets/smallButton.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{

 
 @override
  _ProfilePageState createState()=>_ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage>{

@override
Widget build(BuildContext context) {
  bool turnnotification=false;
   bool turnnonlocation=true;
    return Scaffold(
      body:SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.symmetric(vertical:40,horizontal: 30),
         
          child:Column(
             crossAxisAlignment:CrossAxisAlignment.start,
            children:<Widget> [
            
    Text("Profile",style:TextStyle(color:Colors.black,fontSize: 30,fontWeight: FontWeight.bold )),
                 SizedBox(height:20),
            Row( 
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              
              children:<Widget> 
            [
  
              Container(
                height: 100.0,
                width: 100,
                decoration: BoxDecoration(
                //   color: Colors.red,
                   borderRadius: BorderRadius.circular(50),
                   boxShadow: [
                     BoxShadow(
                       blurRadius:3,
                       offset: Offset(0,4),
                       color: Colors.black38,
                     ),
                   ],
                         image: DecorationImage(
                     image: AssetImage("assets/images/breakfast.jpeg"),
                  fit:BoxFit.cover,
  
                ),
             
                ),
              ),     SizedBox(width:20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
  
                  Text("Randy Ortan Mario",style:TextStyle(fontSize:16 )),
                       SizedBox(height:10),
                  Text("+91747282848",style:TextStyle(color:Colors.grey)),
                      SizedBox(height: 20,),
         SmallButton(btntext:"Edit"),
                ]
              )
            ],
            ),
                 SizedBox(height:30),
    Text("Account",style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold )
    
    ),
           SizedBox(height:20),
    Card(
        elevation: 3,
        child:Padding(
         padding: EdgeInsets.all(16),
        child: Column(
          children:<Widget>[
    CustomListWidget(
        icon: Icons.location_on,
        text: "Location",
    ),
  Divider(height: 10,color: Colors.grey,),
   CustomListWidget(
        icon: Icons.visibility,
        text:"Change Password",
    ),
  Divider(height: 10,color: Colors.grey,),
  
   CustomListWidget(
        icon: Icons.shopping_cart,
        text: "Shipping",
    ),
  Divider(height: 10,color: Colors.grey,),
  
   CustomListWidget(
        icon: Icons.payment,
        text: "Payment",
    ),
  Divider(height: 10,color: Colors.grey,)
  
          ]
        ),
        ),
    ),
            SizedBox(height:20),
        Text("Notifications",style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold )
    
    ),
           SizedBox(height:20),
    Card(
        elevation: 3,
        child:Padding(
         padding: EdgeInsets.all(16),
        child: Column(
          children:<Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Text("App Notification",style:TextStyle(fontSize: 16 )),
  
                Switch(value: turnnotification, onChanged: (bool value){
           
                  setState(() {
                           turnnotification=value;
                  });


              }),
            ],
          ),
          Divider(height: 10,color: Colors.grey,),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Text("Location Tracking",style:TextStyle(fontSize: 16 )),
  
                Switch(value: turnnonlocation, onChanged: (bool value){
           
                  setState(() {
                           turnnonlocation=value;
                  });


              }),
            ],
          ),
              Divider(height: 10,color: Colors.grey,),
        ]
    ),
    ),
  ),
        SizedBox(height:20),
        Text("Other",style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold )
    
    ),
           SizedBox(height:20),
           Card(
             child:Padding(padding: EdgeInsets.all(16),
             child:Container(
               
               width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                 children:<Widget>[
                   Text("Language",style:TextStyle(fontSize: 16),textAlign: TextAlign.start,),
                        SizedBox(height:10),
                        Divider(height: 30,color: Colors.grey,),
                   
                         Text("Currency",style:TextStyle(fontSize: 16),textAlign: TextAlign.start,),
                              SizedBox(height:10),
                        Divider(height: 30,color: Colors.grey,),
                 ],
               ),
             ),
             )
           ),
        ],

        
    ),
        ),
      ),
 
  );
}
}