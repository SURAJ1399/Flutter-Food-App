import 'package:flutter/material.dart';

class CustomListWidget extends StatelessWidget {
 
final IconData icon;
final String text;
CustomListWidget({this.icon,this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.symmetric(vertical:5),
    child: Column(
      children:<Widget>[
    Padding(padding: EdgeInsets.symmetric(vertical:3),
child:Row(
  
  children:<Widget>[
  Icon(icon,color: Colors.blue,),
         SizedBox(width:15),
    Text("$text",style: TextStyle(fontSize: 16),),
  
],
),),
//Divider(height: 10,color: Colors.grey,)

      ]
    ),
    );
  }
}