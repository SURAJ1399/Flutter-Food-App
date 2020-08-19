import 'package:FoodApp/src/widgets/smallButton.dart';
import 'package:flutter/material.dart';

class FoodItemCart extends StatelessWidget {
  
   String title,category,desc,price,discount;

   FoodItemCart(this.title,this.desc,this.category,this.price);
     @override
  Widget build(BuildContext context) {
    return     Container(
               padding: EdgeInsets.all(10),
               width:MediaQuery.of(context).size.width,
               margin: EdgeInsets.symmetric(vertical: 10),

               height: 120,
               decoration: BoxDecoration(
                 color:Colors.white,
                 borderRadius: BorderRadius.circular(10), //to make container look like card add boxhadow;
boxShadow: [BoxShadow(
  blurRadius: 5,offset: Offset(0, 3),color: Colors.black
  
),]

               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,

                 children:<Widget>[
                   Container(
                     
                     width: 90,
                     margin: EdgeInsets.only(right:10),
                     height: 90,
                     decoration: BoxDecoration(
                       
                       image: DecorationImage(image:AssetImage("assets/images/breakfast.jpeg"),
                       fit:BoxFit.cover
                       ),
                       borderRadius: BorderRadius.circular(20),
                     ),
                   ),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[

                       Text(title,style:TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.bold )),
                            SizedBox(height:15),
               Container(
                 width: 210,
                 child: Text(desc)),
                 SizedBox(height:15),
               Container(
                 width: 200,
            
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children:<Widget> [
                     Text("\u{20B9} $price",style:TextStyle(color:Colors.blue,fontSize: 16,fontWeight: FontWeight.bold )) ,
                      SmallButton(btntext:"Buy"),
                   ],
                 ),
               )

                     ],
                   )
                 ]
               ),

             )  ;        
  
  
  
  }
}