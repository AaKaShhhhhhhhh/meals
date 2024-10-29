import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/main.dart';
import 'package:meals/models/category.dart';

class CategoryGridItem extends StatelessWidget{
  CategoryGridItem({required this.category ,super.key});

final Category category;

  @override
  Widget build(BuildContext context) {
   return InkWell(
    onTap: (){},
    splashColor: Theme.of(context).primaryColor,
    borderRadius: BorderRadius.circular(19),
     child: Container(
      padding: EdgeInsets.all(10),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        gradient: LinearGradient(colors: 
        [category.color.withOpacity(0.5),category.color]),
      ),
      child: Text(
        category.title,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color:  Theme.of(context).colorScheme.onBackground,
     
      ),
     
      ),
     ),
   );
  }
}