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
    return Stack(
      children: [
        Card(
          shadowColor: Colors.grey,
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/image-bg.jpg",
                  )),
              // border: Border.all(width: 1, color: Constant.colors),
            ),
            margin: EdgeInsets.all(10),
            // color: Constant.colors.withOpacity(0.2),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  // color: Constant.colors.withOpacity(0.2),
                  child: Image.network(
                    categorie.categories![index].strCategoryThumb.toString(),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),

                  // color: Colors.blue,
                  // decoration: BoxDecoration(
                  //     border: Border.all(width: 1, color: Constant.colors)),
                  // height: 100,
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  child: Text(
                    categorie.categories![index].strCategory
                        .toString()
                        .toUpperCase(),
                    style: TextStyle(
                        letterSpacing: 3,
                        color: Constant.colors,
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  child: Text(
                    categorie.categories![index].strCategoryDescription
                        .toString()
                        .toUpperCase(),
                    style: TextStyle(
                        letterSpacing: 3,
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 30,
          right: 30,
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Constant.colors.withOpacity(0.5),
                blurRadius: 40.0, // soften the shadow
                spreadRadius: 2.0, //extend the shadow
                offset: Offset(
                  3.0, // Move to right 5  horizontally
                  3.0, // Move to bottom 5 Vertically
                ),
                // spreadRadius: 10,
                // blurRadius: 20,
                // offset: Offset(3, 7),
              )
            ]),
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(255, 61, 0, 1).withOpacity(0.7),
              child: Icon(
                Icons.favorite_border,
              ),
            ),
          ),
        )
      ],
    );
  }
}
