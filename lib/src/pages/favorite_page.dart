import 'package:FoodApp/src/model/food_model.dart';
import 'package:FoodApp/src/scoped_model/main_model.dart';
import 'package:FoodApp/src/widgets/food_item_cart.dart';
import 'package:FoodApp/src/widgets/smallButton.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class FavoritePage extends StatefulWidget{
 @override
  _FavoriteState createState()=>_FavoriteState();

}

class _FavoriteState extends State<FavoritePage>{

@override
Widget build(BuildContext context) {
  return Scaffold(
    
body: Container(
   color: Colors.white,
  
  padding: EdgeInsets.symmetric(horizontal:16),
  child:    ScopedModelDescendant<MainModel>(
                builder: (BuildContext context,Widget child,MainModel model){
model.fetchFoods();
List<Food> foods=model.foods;
              return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
  
        children:foods.map((Food food){
          return FoodItemCart(
            food.name,
            food.description,
            food.category,
            food.price.toString()); 
        }).toList(),
  
      );

}
       ),
),
  );

  
}
}