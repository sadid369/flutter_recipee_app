// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/model/recipe.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.categoryName),
      ),
      body: recipe == null
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: recipe!.meals!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          recipe!.meals![index].strMealThumb.toString()),
                    ),
                    title: Text(recipe!.meals![index].strMeal.toString()),
                  ),
                );
              },
            ),
    );
  }
}
