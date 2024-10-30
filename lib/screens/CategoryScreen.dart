import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/category.dart';
import 'package:meals/screens/mealsScreen.dart';
import 'package:meals/widgets/category_grid_item.dart';

class Categoryscreen extends StatelessWidget{
  Categoryscreen({super.key });

  void _selectCategory(context , Category category){
    final outputting_List_Here = 
    dummyMeals.where(
      (meal) => meal.categories.contains(category.id)).toList();

    Navigator.push(context, MaterialPageRoute(
      builder: (ctx) =>  Mealsscreen(
        title: category.title,
         meals: outputting_List_Here),
         ),
         );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Your Category'),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
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

      ),
    );

  }
}