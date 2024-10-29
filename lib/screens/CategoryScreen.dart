import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/category.dart';
import 'package:meals/widgets/category_grid_item.dart';

class Categoryscreen extends StatelessWidget{
  Categoryscreen({super.key});

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
          CategoryGridItem(category: category)]

      ),
    );

  }
}