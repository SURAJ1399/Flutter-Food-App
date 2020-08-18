import 'package:flutter/material.dart';


class Button extends StatelessWidget {
 

final String text;
Button({this.text});
  @override
  Widget build(BuildContext context) {
    return
            Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(25),
                    color: Colors.blueAccent,
                  ),
                 
                  child: Center(
                   
                    child:Text("$text",style: TextStyle(color:Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),),
                    


                  ),

            );
  }
}