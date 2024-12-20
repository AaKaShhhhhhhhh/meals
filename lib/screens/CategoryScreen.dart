import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meals.dart';
import 'package:meals/screens/mealsScreen.dart';
import 'package:meals/widgets/category_grid_item.dart';

class Categoryscreen extends StatelessWidget{
  const Categoryscreen({super.key , required this.ontogglefavorite});
  final void Function(Meal meal) ontogglefavorite;

  void _selectCategory(context , Category category){
    final outputtingListHere = 
    dummyMeals.where(
      (meal) => meal.categories.contains(category.id)).toList();

    Navigator.push(context, MaterialPageRoute(
      builder: (ctx) =>  Mealsscreen(
        title: category.title,
         meals: outputtingListHere,
         ontogglefavorite: ontogglefavorite,),
         ),
         );
  }

  @override
  Widget build(BuildContext context) {
    return  GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2 ,
       childAspectRatio: 3/2,
       crossAxisSpacing:  10 ,
       mainAxisSpacing: 10 ),
      children: [        
        for(final category in availableCategories)
          CategoryGridItem(
            category: category,
             onSelectcategory: (){
              _selectCategory(
                context,category );
                } ,
                )
                ]

     
    );

  }
}