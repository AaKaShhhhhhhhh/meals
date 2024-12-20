import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/meals.dart';
import 'package:meals/screens/recepiescreen.dart';
import 'package:meals/widgets/meals_item.dart';


class Mealsscreen extends StatelessWidget{
  const Mealsscreen({super.key , required this.title , required this.meals , required this.ontogglefavorite});

  final String title;
  final List< Meal> meals;
  final void Function(Meal meal) ontogglefavorite;
  void selectmeal(context , Meal meal){
    Navigator.push(
      context,
       MaterialPageRoute(
        builder: (ctx )=> Recepiescreen(meals: meal, ontogglefavorite: ontogglefavorite,)
          )
          );
  }

  

  @override
  Widget build(BuildContext context) {
    
    Widget content =ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx,index) =>  
      MealsItem(meal: meals[index] , 
      onSelectMeal: (meal)
      {selectmeal(context, meal);
      },
      )
        );

        if (meals.isEmpty){
          return const Center(child: Text('No meals found'));
        }

 
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [IconButton(onPressed: (){ontogglefavorite;}, icon: const Icon(Icons.star))],
      ),
      body:  content
    );
  }
}