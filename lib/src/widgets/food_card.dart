import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget{

  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  FoodCard({this.imagePath,this.categoryName,this.numberOfItems});

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Card(


      child:Padding(padding: EdgeInsets.symmetric(horizontal:20,vertical:10),
      child:Row(

        children:<Widget>[
        Image(image:AssetImage(widget.imagePath),width:65,height: 65),

        SizedBox(width:20.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          Text(widget.categoryName,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold)),
          Text(widget.numberOfItems.toString()+" Kinds",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold))
        ],)

        ]
      )
    ),
    );
  }
}