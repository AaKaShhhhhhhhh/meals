import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/models/meals.dart';
import 'package:meals/screens/mealsScreen.dart';
import 'package:transparent_image/transparent_image.dart';

class MealsItem extends StatelessWidget{
   MealsItem({super.key , required this.meal });

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
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
                child: Column(),
              ))
             ],
             ),
        ),
        );
  }


}