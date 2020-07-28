import 'package:flutter/material.dart';


class OrderCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Card(
     
     child:Padding(
       padding: const EdgeInsets.symmetric(horizontal:10,vertical:10),
       child:Row(
         
         crossAxisAlignment:CrossAxisAlignment.start,
         
         children: <Widget>[
         
           Container(
           height:75.0,
           width: 45,
           decoration: BoxDecoration(
               border:Border.all(width:2,color:Color(0xFFD3D3D3)),
             borderRadius: BorderRadius.circular(10)
           ),
           child: Column(
             children:<Widget>
           [
             InkWell(
             onTap:(){},
             
           child:Icon(Icons.keyboard_arrow_up,color: Color(0xFFD3D3D3)))  ,
             Text("0",style: TextStyle(fontSize:18,),),
             Icon(Icons.keyboard_arrow_down,color: Color(0xFFD3D3D3),)
          
           ]
           ),),
          SizedBox(width:20),
           Container(
             height: 70,width: 70,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage("assets/images/lunch.jpeg"),
                fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                BoxShadow(
                  color:Colors.black,
                  blurRadius: 5.0,
                  offset: Offset(0, 5)
                  
                        )
                                        ]
                )
           ),
           SizedBox(width:20),

           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             
             children:<Widget>[
               Text("Grilled Chicken",style:TextStyle(fontSize:16,fontWeight:FontWeight.bold),),
               SizedBox(height:5),
               Text("3.0",style:TextStyle(fontSize:16,color: Colors.orangeAccent)),
                    SizedBox(height:5),
               Container(width: 120,height: 25,
               
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 children:<Widget>[
                   Row(
                     children:<Widget>[

                       Text("Chicken",style:TextStyle(color: Colors.grey,fontWeight:FontWeight.bold)),
                       SizedBox(width:5),
                       Text("x",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                         SizedBox(width:5),
                     ]
                   ),    Row(
                     children:<Widget>[

                       Text("Chicken",style:TextStyle(color: Colors.grey,fontWeight:FontWeight.bold)),
                       SizedBox(width:5),
                       Text("x",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                         SizedBox(width:5),
                     ]
                   ),    Row(
                     children:<Widget>[

                       Text("Chicken",style:TextStyle(color: Colors.grey,fontWeight:FontWeight.bold)),
                       SizedBox(width:5),
                       InkWell(
                         onTap: (){},
                         child: Text("x",style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold))
                         
                         ),
                     
                     ]
                   )
                 ]
               ),)
             ]
           ),
           Spacer(),
          GestureDetector(
            onTap:(){},
            child:Icon(Icons.cancel,color:Colors.grey)
          )
           
       ],)
     )
    ) ;
  }
}