// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/constant.dart';

import 'package:flutter_recipee_app/model/categories.dart';
import 'package:flutter_recipee_app/pages/recipe_page/each_category_page.dart';

class CategoryDisplayCard extends StatelessWidget {
  final Categorie categorie;
  final int index;
  const CategoryDisplayCard({
    Key? key,
    required this.categorie,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [],
          border: Border.all(
            width: 0.5,
            color: Constant.colors.withOpacity(0.5),
          )),
      child: Stack(children: [
        Container(
          child: Image.network(
            categorie.categories![index].strCategoryThumb.toString(),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 5,
          child: Text(
            categorie.categories![index].strCategory.toString(),
            style: TextStyle(
              letterSpacing: 5,
              fontSize: 35,
              color: Constant.colors,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ]),
    );
  }
}
