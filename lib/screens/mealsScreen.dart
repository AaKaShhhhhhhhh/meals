import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/meals.dart';


class Mealsscreen extends StatelessWidget{
  const Mealsscreen({super.key , required this.title , required this.meals});

  final String title;
  final List< Meal> meals;

  

  @override
  Widget build(BuildContext context) {
    
    Widget content =ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx,index) =>  
      Text(meals[index].title)
        );

        if (meals.isEmpty){
          return Center(child: Text('No meals found'));
        }

 
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:  content
    );
  }
}