
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

void addFood(Food food){

_foods.add(food);
}


void fetchFoods(){
http
.get("https://pseudoblog.in/FlutterFoodApp/api/config/getFoods.php").
then((http.Response response){
print("fetching : ${response.body}");
final List fetcheData=json.decode(response.body);
final List<Food> fetchedFoodItems=[];
print(fetcheData);
fetcheData.forEach((data) { 
  
 Food food=Food(
   
   id: data["id"],
   category: data["category_id"],
   discount:double.parse( data["discount"]),
   imagePath: data["image_path"],
   name: data["title"],
  price: double.parse(data["price"]),
   );
fetchedFoodItems.add(food);

});
_foods=fetchedFoodItems;
print(_foods[0].name);
});
}

}