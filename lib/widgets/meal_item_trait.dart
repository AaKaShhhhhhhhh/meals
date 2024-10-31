//we are gonna oputput affordability, duration etc with the help of this widget . we will output in meal_item Row children..

import 'package:flutter/material.dart';

class MealItemTrait extends StatelessWidget{
  const MealItemTrait({super.key , required this.icon , required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: const Color.fromARGB(255, 241, 238, 238)),
        SizedBox(width: 10,),
        Text(label, style: TextStyle(color: Colors.white
        ),
        )
      ],
    );
    
  }
}