import 'package:flutter/material.dart';


class BoughtFoods extends StatefulWidget{
final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double rating;
  BoughtFoods({this.category,this.imagePath,this.discount,this.id,this.name,this.price,this.rating});



@override
_BoughtFoodState createState()=>_BoughtFoodState();

}


class _BoughtFoodState extends State<BoughtFoods>{

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.circular(10),
     
      child: Stack(
        children:<Widget>[
          Container(
        height: 200,
        width: 340,
        child: Image.asset(widget.imagePath,fit: BoxFit.cover,),
            ),
        Positioned(
          left: 0.0,
          bottom: 0.0,
            child: Container(
             height: 60,
             width: 340,
             decoration: BoxDecoration(
               gradient: LinearGradient(
               colors: [Colors.black,Colors.black12],
               begin: Alignment.bottomCenter,
               end: Alignment.topCenter
             
               )
           ),
        ),
               
            ),
          Positioned(
            left: 10,
            bottom: 10,
            right: 10,
            child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text(widget.name,style:TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold)),
                  Row(children:<Widget>[
                      Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                        Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                            Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                                Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                                    Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                                    SizedBox(width:20.0),
                                    Text("("+widget.rating.toString()+"Reviews)",style:TextStyle(color: Colors.grey))
                  ])
                ],),
                
    Column(
      children:<Widget>[
        Text(widget.price.toString(),style:TextStyle(color: Colors.orangeAccent,fontSize: 18,fontWeight: FontWeight.bold)),
          Text("Main Order",style:TextStyle(color: Colors.grey)),
      ]
    )
              ]
            )
          )
        ]
      ),
    );
  }
}