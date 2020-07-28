import 'package:FoodApp/src/widgets/food_category.dart';
import 'package:FoodApp/src/widgets/search_field.dart';
import 'package:flutter/material.dart';
import '../widgets/home_top_info.dart';
import '../widgets/food_category.dart';
import '../widgets/bought_foods.dart';


import '../data/food_data.dart';
import '../model/food_model.dart';
class HomePage extends StatefulWidget{

  @override
 _HomePageState createState()=>_HomePageState();
}


class _HomePageState extends State<HomePage>{
 
  List<Food> _foods=foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
      padding: EdgeInsets.only(top:50.0,left:20.0,right: 20),
       children: <Widget>[
         HomeTopInfo(),
         FoodCategory(),
         SizedBox(height:20.0,),
         SearchField(),
           SizedBox(height:20.0,),
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
           children: <Widget>[
                Text("Frequently bought foods",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
           
            GestureDetector(
              onTap: (){},
               child: Text("View All",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.orangeAccent)),
             ),
           ],

         ),
         SizedBox(height:20),
          Column(
         children: _foods.map(_buildFoodItems).toList()
      
          ),
         
       ],
       ),
       
       );
       
  }
  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom:20.0),
child: BoughtFoods(
  id:food.id,
  name: food.name,
  imagePath: food.imagePath,
  discount: food.discount,
  category: food.category,
  rating: food.rating,
  price: food.price,
),
    );
  }
}