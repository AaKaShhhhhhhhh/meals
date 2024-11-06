import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals/main.dart';
import 'package:meals/models/category.dart';
import 'package:meals/screens/mealsScreen.dart';

class CategoryGridItem extends StatelessWidget{
  const CategoryGridItem({required this.category ,super.key, required this.onSelectcategory});

final Category category;
final void Function() onSelectcategory;

  @override
  Widget build(BuildContext context) {
   return InkWell(
    onTap: 
      onSelectcategory,
    splashColor: Theme.of(context).primaryColor,
    borderRadius: BorderRadius.circular(19),
     child: Container(
      padding: const EdgeInsets.all(10),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        gradient: LinearGradient(colors: 
        [category.color.withOpacity(0.5),category.color]),
      ),
      child: Text(
        category.title,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color:  Theme.of(context).colorScheme.onSurface,
     
      ),
     
      ),
     ),
   );
  }
}