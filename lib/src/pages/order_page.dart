import 'package:FoodApp/src/pages/sigin_page.dart';
import 'package:FoodApp/src/widgets/order_card.dart';

import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget{
 @override
  _OrderState createState()=>_OrderState();

}

class _OrderState extends State<OrderPage>{

              @override
              Widget build(BuildContext context) {
                return Scaffold(
       backgroundColor: Colors.white,
                  body: ListView(
                    padding: EdgeInsets.symmetric(horizontal:10),
                    scrollDirection:Axis.vertical,
                    children: <Widget>[
                           
                            OrderCard(),
                            OrderCard(),
                            OrderCard(),
                            
                          
                        
                        _buildTotalContainer(),
                              

                    ],
                  ),
                 // bottomNavigationBar:_  _buildTotalContainer() ,
                );
}

Widget _buildTotalContainer(){

  return Container(
    height: 230,
    padding:EdgeInsets.symmetric(horizontal:20),
    margin: EdgeInsets.only(top:20),
            child:
            Column(children: <Widget>[
           
            // ListTile(
            //   leading:Text("Cart Total",style:TextStyle(color:Colors.grey,fontSize:16,fontWeight:FontWeight.bold)),
            //   trailing:Text("23.0",style:TextStyle(color:Colors.black,fontSize:16,fontWeight:FontWeight.bold))
            //   ),
            //     ListTile(
            //   leading:Text("Cart Total",style:TextStyle(color:Colors.grey,fontSize:16,fontWeight:FontWeight.bold)),
            //   trailing:Text("23.0",style:TextStyle(color:Colors.black,fontSize:16,fontWeight:FontWeight.bold))
            //   ),
            //     ListTile(
            //   leading:Text("Cart Total",style:TextStyle(color:Colors.grey,fontSize:16,fontWeight:FontWeight.bold)),
            //   trailing:Text("23.0",style:TextStyle(color:Colors.black,fontSize:16,fontWeight:FontWeight.bold))
            //   ),
                SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Text("Cart Total",style:TextStyle(color:Colors.grey,fontSize:16,fontWeight:FontWeight.bold)),
                     
                        Text("23.0",style:TextStyle(color:Colors.black,fontSize:16,fontWeight:FontWeight.bold))
                      ]
                    ),
                    SizedBox(height:10),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Text("Discount",style:TextStyle(color:Colors.grey,fontSize:16,fontWeight:FontWeight.bold)),
                     
                        Text("3.0",style:TextStyle(color:Colors.black,fontSize:16,fontWeight:FontWeight.bold))
                      ]
                    ),  SizedBox(height:10),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Text("Tax",style:TextStyle(color:Colors.grey,fontSize:16,fontWeight:FontWeight.bold)),
                     
                        Text("0.5",style:TextStyle(color:Colors.black,fontSize:16,fontWeight:FontWeight.bold))
                      ]
                    ), 
                    
                    Divider(height:40,color:Colors.grey),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Text("SubTotal",style:TextStyle(color:Colors.grey,fontSize:16,fontWeight:FontWeight.bold)),
                     
                        Text("26.5",style:TextStyle(color:Colors.black,fontSize:16,fontWeight:FontWeight.bold))
                      ]
                    ),
                  SizedBox(height:20),
                  GestureDetector(
                    onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SigInPage()));
                    },
                  child:
                    Container(
                     //width:MediaQuery.of(context).size.width,
                     height:50,
                    
                     decoration:BoxDecoration(color:Colors.blue,
                     borderRadius: BorderRadius.circular(30)
                     
                      ),
                      child: Center(

                        child:Text("Proceed to Checkout",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:18),)
                      ),
                    )
                  ),

            ],),
          );
     }

}