import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals/models/meals.dart';
import 'package:transparent_image/transparent_image.dart';

class Recepiescreen extends StatelessWidget{
  const Recepiescreen({super.key , required this.meals ,this.title , required this.ontogglefavorite});

  final Meal meals;

  final String? title;

  final void Function(Meal meal) ontogglefavorite;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(meals.title),),
      body: 
      SingleChildScrollView(child: Column(
      children: [
        FadeInImage(
          placeholder: MemoryImage(kTransparentImage), 
        image: NetworkImage(meals.imageUrl)
        ),
        const SizedBox(height: 10,),
        Text("Ingredients" , style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onSurface,

        ),
        
        
        
        ),
        for(final ingredient in meals.ingredients)
        Text(ingredient , style:Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onSurface,) ,textAlign: TextAlign.center),

          const SizedBox(height: 20 ,),

          for(final step in meals.steps)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Text(step , style:Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,) , textAlign: TextAlign.center,),
        )

      ]
    )
    )
    
    );
    


   
  }
}