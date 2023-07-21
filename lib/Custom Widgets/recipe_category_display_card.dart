// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_recipee_app/constant.dart';
import 'package:flutter_recipee_app/model/recipe.dart';

class RecipeCategoryDisplayCard extends StatelessWidget {
  final Recipe recipe;
  final int index;
  const RecipeCategoryDisplayCard({
    Key? key,
    required this.recipe,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        recipe.meals![index].strMealThumb.toString(),
      ),
      footer: Container(
        padding: EdgeInsets.all(5),
        height: 40,
        color: Constant.colors.withOpacity(0.6),
        child: Center(
          child: Text(
            overflow: TextOverflow.ellipsis,
            recipe.meals![index].strMeal.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
