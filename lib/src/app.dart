import 'package:FoodApp/src/admin/pages/add_food_item.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'screens/main_screen.dart';

import 'scoped_model/main_model.dart';
class App extends StatelessWidget{
final MainModel mainModel=MainModel();

   @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model:mainModel,
          child: MaterialApp
    (

debugShowCheckedModeBanner: false,
      title:"Food Delivery App",
      theme: ThemeData(

        primaryColor: Colors.blueAccent
      ),
      home: MainScreen(model:mainModel),
  // home: AddFoodItem(),
    ),

    );
    
  }
}