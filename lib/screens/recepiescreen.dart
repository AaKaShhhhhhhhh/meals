import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals/models/meals.dart';
import 'package:transparent_image/transparent_image.dart';

class Recepiescreen extends StatelessWidget{
  const Recepiescreen({super.key , required this.meals , required this.title});

  final Meal meals;
  final String title;
  @override
  Widget build(BuildContext context) {
    final content =Column(
      children: [
        FadeInImage(
          placeholder: MemoryImage(kTransparentImage), 
        image: NetworkImage(meals.imageUrl)
        )
      ]
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
        ),
        body: content,
        
    );
  }
}