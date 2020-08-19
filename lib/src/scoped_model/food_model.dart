
import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import '../model/food_model.dart';
import 'package:http/http.dart' as http;
class FoodModel extends Model 
{
  List<Food> _foods=[];

List<Food>get foods {
  return List.from(_foods);
}

void addFood(Food food )async{

//_foods.add(food);
final Map<String,dynamic> foodData={
  "title":food.name,
  "description":food.description,
  "category":food.category,
  "price":food.price,
  "discount":food.discount

};
final http.Response  respone =await http.post("https://flutter-foodapp.firebaseio.com/foods.json", body:json.encode(foodData));
final Map< String,dynamic> data=json.decode(respone.body);
print(data["name"]);

}


// void fetchFoods(){

// http
// .get("https://pseudoblog.in/FlutterFoodApp/api/config/getFoods.php").
// then((http.Response response){
// print("fetching : ${response.body}");
// final List fetcheData=json.decode(response.body);
// final List<Food> fetchedFoodItems=[];
// print(fetcheData);
// fetcheData.forEach((data) { 
  
//  Food food=Food(
   
//    id: data["id"],
//    category: data["category_id"],
//    discount:double.parse( data["discount"]),
//    imagePath: data["image_path"],
//    name: data["title"],
//   price: double.parse(data["price"]),
//    );
// fetchedFoodItems.add(food);

// });
// _foods=fetchedFoodItems;
// print(_foods[0].name);
// });
// }
void fetchFoods(){
  
http
.get("https://flutter-foodapp.firebaseio.com/foods.json").
then((http.Response response){

final Map<String,dynamic> fetcheData=json.decode(response.body);
final List<Food> foodItems=[];

fetcheData.forEach((String id, dynamic fooddata) {
  Food fooditem=Food(
    id:id,
    name:fooddata["title"],
    description: fooddata["description"],
    price: fooddata["price"],
    category: fooddata["category"],
    discount: fooddata["discount"],
  );
  foodItems.add(fooditem);

 });
_foods=foodItems;
});
}

}