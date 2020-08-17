import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  String btntext;
  SmallButton({this.btntext});

  @override
  Widget build(BuildContext context) {
    return  Container(
            height:30,
            width:60,
            decoration:BoxDecoration(
              
             border: Border.all(
               color:Colors.blue,
             ),
              borderRadius: BorderRadius.circular(20),
  
  
            ),
          child:Center(  child: Text("$btntext",style:TextStyle(color:Colors.blue,fontSize: 16))),
          );
  }
}