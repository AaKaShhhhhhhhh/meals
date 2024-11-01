import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals/models/meals.dart';
import 'package:meals/screens/CategoryScreen.dart';
import 'package:meals/screens/mealsScreen.dart';

class  Tabsscreen extends StatefulWidget {
  Tabsscreen({super.key});



  @override  
  State<Tabsscreen> createState(){
    return TabsscreenState();
  }
}

class TabsscreenState extends  State<Tabsscreen>{
  int selectPageIndex = 0;
  final List<Meal> favoriteMeal = [];

  void _Selectpage(int index){
    setState(() {
      selectPageIndex = index;
    });
  }

  void togglefavoriteMeal(Meal meal){
    final existingmeal = favoriteMeal.contains(meal);
    if(existingmeal){
      favoriteMeal.remove(meal);
    }
    else{
      favoriteMeal.add(meal);
    }
  }

  @override
  Widget build(BuildContext context) {
Widget activepage =  Categoryscreen( ontogglefavorite: togglefavoriteMeal,);
var activescreentitle = 'your Favorites';

if(selectPageIndex== 1){
  activepage =  Mealsscreen(title: 'favorites', meals: [] , ontogglefavorite: togglefavoriteMeal,);
}

    return Scaffold(
      appBar: AppBar(title: Text(activescreentitle),),
      body: activepage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _Selectpage,
        currentIndex: selectPageIndex,
        items:const [
           BottomNavigationBarItem(icon: Icon(Icons.set_meal),label: "categories"),
           BottomNavigationBarItem(icon: Icon(Icons.star), label: "favorites"),
           
           
           ]
           ),
    );
  }
}