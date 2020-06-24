import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(bottom:20.0),
     child:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Text("What would",style: TextStyle(fontSize: 32.0,fontWeight:FontWeight.bold),),
                      Text("you like to eat?",style: TextStyle(fontSize: 32.0,fontWeight:FontWeight.bold))
                    ],

                  ),
                  Icon(Icons.notifications_none,size: 30,color: Theme.of(context).primaryColor,)
                ],
              ),
 
    );
    
     }
}