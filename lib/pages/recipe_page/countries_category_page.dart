// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_recipee_app/Custom%20Widgets/recipe_category_display_card.dart';
import 'package:flutter_recipee_app/constant.dart';
import 'package:flutter_recipee_app/model/recipe.dart';
import 'package:flutter_recipee_app/pages/recipe_page/recipe_item.dart';

class CountriesCategoryPage extends StatefulWidget {
  final String categoryName;
  const CountriesCategoryPage({
    Key? key,
    required this.categoryName,
  }) : super(key: key);

  @override
  State<CountriesCategoryPage> createState() => _CountriesCategoryPageState();
}

class _CountriesCategoryPageState extends State<CountriesCategoryPage> {
  Recipe? recipe;
  @override
  void initState() {
    super.initState();
    getTheCategory(name: widget.categoryName);
  }

  Future<void> getTheCategory({required String name}) async {
    http.Response res = await http.get(Uri.parse(
        "https://www.themealdb.com/api/json/v1/1/filter.php?a=${name}"));
    recipe = Recipe.fromMap(jsonDecode(res.body));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.categoryName),
        backgroundColor: Constant.colors,
      ),
      body: recipe == null
          ? Center(
              child: const CircularProgressIndicator(
              color: Constant.colors,
            ))
          : ListView.builder(
              itemCount: recipe!.meals!.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RecipeItem(
                            recipeId:
                                recipe!.meals![index].idMeal.toString())));
                  },
                  child: RecipeCategoryDisplayCard(
                    recipe: recipe!,
                    index: index,
                  ),
                );
              },
            ),
    );
  }
}
