import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/models/meals.dart';
import 'package:meals/screens/mealsScreen.dart';
import 'package:meals/widgets/meal_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class MealsItem extends StatelessWidget{
   MealsItem({super.key , required this.meal , required this.onSelectMeal});

  final Meal meal;
  final void Function(Meal meal) onSelectMeal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          onSelectMeal(meal);
        },
        child: Stack(children: [
          FadeInImage
          (placeholder: MemoryImage(
            kTransparentImage),
             image: NetworkImage(meal.imageUrl)
             ),
             Positioned
             (right: 0 ,
              bottom: 0, 
              left: 0 , 
              child: Container(
                color: Colors.black54,
                padding: EdgeInsets.all(16),
                child:  Column(
                  children: [
                    Text(meal.title, maxLines: 2,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: const TextStyle(
                      color: Color.fromARGB(254, 223, 223, 227),
                      fontSize: 20),),
                    const SizedBox(
                      height : 12
                    ),
                     Row(
                      children: [
                        MealItemTrait(icon: Icons.schedule, label: '${meal.duration}  minutes'),
                        const SizedBox(width: 10,),
                        MealItemTrait(icon: Icons.money, label: '${meal.affordability}  minutes'),
                        const SizedBox(width: 10,),
                        MealItemTrait(icon: Icons.work, label: '${meal.complexity}  minutes'),




                      ],
                    )
                  ],
                ),
              ))
             ],
             ),
        ),
        );
  }


}