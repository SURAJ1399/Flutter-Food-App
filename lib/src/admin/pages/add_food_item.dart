import 'package:FoodApp/src/model/food_model.dart';
import 'package:FoodApp/src/scoped_model/main_model.dart';
import 'package:FoodApp/src/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class AddFoodItem extends StatefulWidget {
  AddFoodItem({Key key}) : super(key: key);

  @override
  _AddFoodItemState createState() => _AddFoodItemState();
}

class _AddFoodItemState extends State<AddFoodItem> {
  String title,category,desc,price,discount;
  GlobalKey <FormState> _fooditemkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body: SingleChildScrollView(
                      child: Container(
              
              padding: EdgeInsets.symmetric(vertical:60,horizontal: 16),
        //  width: MediaQuery.of(context).size.width,
        //  height:MediaQuery.of(context).size.height,
            child: Form(
            key:_fooditemkey ,
                    child: Column(

              children:<Widget> [
               Container(
                  height: 170,
                  margin: EdgeInsets.only(bottom: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage( "assets/images/noimage.png")),
                    borderRadius: BorderRadius.circular(10),
                    

),
               ),
             _buildTextFormField("Food Item"),
             _buildTextFormField("Category"),
             _buildTextFormField("Description",maxline: 5),
              _buildTextFormField("Price"),
                _buildTextFormField("Discount"),
                     SizedBox(height:60),
        ScopedModelDescendant(builder: (BuildContext context, Widget child, MainModel model)
        {
          return     GestureDetector(
                onTap: (){
                  if(_fooditemkey.currentState.validate()){
                    _fooditemkey.currentState.save();
                  final Food food=  Food(
                      name: title,
                      category: category,
                      description: desc,
                      price:double.parse( price),
                      discount: double.parse( discount),
                    );
                    model.addFood(food);
                  }
                },
                child: Button(text:"Add Food Item"),
          );

        }),

              ],
            ),
        ),
      ),
          ),
    );
  }

  Widget _buildTextFormField(  String hint,{int maxline=1}){
return TextFormField(
    decoration: InputDecoration(
          hintText: hint
        ),
        maxLines: maxline,
        keyboardType: hint=="Price"||hint=="Discount"?TextInputType.number:TextInputType.text,
        validator: (String value)
        {
          if(value.isEmpty)
          return "Invalid Details..!!";
        },
        onChanged: (String value){
          if(hint=="Food Item")
{
  title=value;
}
       if(hint=="Category")
{
  category=value;
} if(hint=="Price")
{
  price=value;
} if(hint=="Description")
{
  desc=value;
}
 if(hint=="Discount")
{
  discount=value;
}
        },

);
  }
}