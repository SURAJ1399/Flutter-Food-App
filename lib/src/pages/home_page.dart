import 'package:FoodApp/src/scoped_model/main_model.dart';
import 'package:FoodApp/src/widgets/food_category.dart';
import 'package:FoodApp/src/widgets/search_field.dart';
import 'package:flutter/material.dart';
import '../widgets/home_top_info.dart';
import '../widgets/food_category.dart';
import '../widgets/bought_foods.dart';
import 'package:scoped_model/scoped_model.dart';


import '../model/food_model.dart';

class HomePage extends StatefulWidget{
// final FoodModel foodModel;
// HomePage(this.foodModel);
  @override
 _HomePageState createState()=>_HomePageState();
}


class _HomePageState extends State<HomePage>{
 
 // List<Food> _foods=foods;
@override
void initState(){
//widget.foodModel.fetchFoods();
  super.initState();

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
      padding: EdgeInsets.only(left:20.0,right: 20),
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

       ScopedModelDescendant<MainModel>(
                builder: (BuildContext context,Widget child,MainModel model){

              return Column(
                    children: model.foods.map(_buildFoodItems).toList()
      
          );

}
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
 // imagePath: food.imagePath,
 imagePath: food.imagePath,
  discount: food.discount,
  category: food.category,
  rating: food.rating,
  price: food.price,
),
    );
  }
}
