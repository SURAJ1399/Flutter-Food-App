import 'package:FoodApp/src/widgets/cutom_list_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
 @override
  _ProfilePageState createState()=>_ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage>{

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      padding: EdgeInsets.symmetric(vertical:40,horizontal: 30),
     
      child:Column(
         crossAxisAlignment:CrossAxisAlignment.start,
        children:<Widget> [
        
  Text("Profile",style:TextStyle(color:Colors.black,fontSize: 32,fontWeight: FontWeight.bold )),
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
      Container(
        height:30,
        width:60,
        decoration:BoxDecoration(
          
         border: Border.all(
           color:Colors.blue,
         ),
          borderRadius: BorderRadius.circular(20),


        ),
      child:Center(  child: Text("Edit",style:TextStyle(color:Colors.blue,fontSize: 20 ))),
      )
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
      ],

      
    ),
      ),
 
  );
}
}