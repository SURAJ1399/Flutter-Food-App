
import 'package:FoodApp/src/pages/favorite_page.dart';
import 'package:FoodApp/src/pages/profile_page.dart';
import 'package:FoodApp/src/scoped_model/main_model.dart';
import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/order_page.dart';

class MainScreen extends StatefulWidget{
  final MainModel model;
  MainScreen({this.model});

  @override
 _MainScreenState createState()=>_MainScreenState();
}
class _MainScreenState extends State<MainScreen>

 { 
     int currentindex=0;
     List<Widget>pages;
     Widget currentpage;
     HomePage homePage;
     OrderPage orderPage;
     FavoritePage favoritePage;
     ProfilePage profilePage;
  
    @override
      void initState() {

    widget.model.fetchFoods();
        super.initState();
        homePage=HomePage();
        orderPage=OrderPage();
        favoritePage=FavoritePage();
        profilePage=ProfilePage();
        pages=[homePage,orderPage,favoritePage,profilePage];
        currentpage=homePage;
      }

    @override
  Widget build(BuildContext context) {

    return Scaffold(

      bottomNavigationBar:BottomNavigationBar(
         currentIndex: currentindex,
         type: BottomNavigationBarType.fixed,
          onTap: (int index){
            setState(() {
              currentindex=index;
              currentpage=pages[index];
            });
          },
            items:<BottomNavigationBarItem>[

          BottomNavigationBarItem(

          icon: Icon(Icons.home),
          title: Text("Home")

          ),
            BottomNavigationBarItem(

          icon: Icon(Icons.shopping_cart),
          title: Text("Orders")

          ),
          BottomNavigationBarItem(

          icon: Icon(Icons.favorite),
          title: Text("Favorite")

          ),
            BottomNavigationBarItem(

          icon: Icon(Icons.person),
          title: Text("Profile")

          ),
        ]
      ),
      body: currentpage,
    
    );
  
  }


}