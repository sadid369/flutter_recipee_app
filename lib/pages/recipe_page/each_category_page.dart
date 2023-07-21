// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/Custom%20Widgets/recipe_category_display_card.dart';
import 'package:flutter_recipee_app/constant.dart';
import 'package:flutter_recipee_app/model/recipe.dart';
import 'package:flutter_recipee_app/pages/recipe_page/recipe_item.dart';
import 'package:http/http.dart' as http;

class EachCategoryPage extends StatefulWidget {
  final String categoryName;
  const EachCategoryPage({
    Key? key,
    required this.categoryName,
  }) : super(key: key);

  @override
  _EachCategoryPageState createState() => _EachCategoryPageState();
}

class _EachCategoryPageState extends State<EachCategoryPage> {
  Recipe? recipe;
  @override
  void initState() {
    super.initState();
    getTheCategory(name: widget.categoryName);
  }

  Future<void> getTheCategory({required String name}) async {
    http.Response res = await http.get(Uri.parse(
        "https://www.themealdb.com/api/json/v1/1/filter.php?c=${name}"));
    recipe = Recipe.fromMap(jsonDecode(res.body));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.colors.withOpacity(0.6),
      body: recipe == null
          ? Center(
              child: const CircularProgressIndicator(color: Constant.colors))
          : Container(
              margin: EdgeInsets.all(6),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 40, left: 10),
                    height: 50,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 25,
                        // color: Constant.colors,
                        color: Constant.colors,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount: recipe!.meals!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RecipeItem(
                                    recipeId: recipe!.meals![index].idMeal
                                        .toString())));
                          },
                          child: RecipeCategoryDisplayCard(
                            recipe: recipe!,
                            index: index,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
// Card(
//                   child: ListTile(
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => RecipeItem(
//                               recipeId:
//                                   recipe!.meals![index].idMeal.toString())));
//                     },
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           recipe!.meals![index].strMealThumb.toString()),
//                     ),
//                     title: Text(
//                       recipe!.meals![index].strMeal.toString(),
//                     ),
//                   ),
//                 );