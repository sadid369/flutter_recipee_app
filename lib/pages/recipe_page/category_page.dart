import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/model/recipe.dart';
import 'package:flutter_recipee_app/pages/recipe_page/each_category_page.dart';
import 'package:http/http.dart' as http;

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  Recipe? recipe;

  @override
  void initState() {
    super.initState();
    getAllCategory();
  }

  Future<void> getAllCategory() async {
    http.Response res = await http.get(
        Uri.parse("https://www.themealdb.com/api/json/v1/1/list.php?c=list"));
    recipe = Recipe.fromMap(jsonDecode(res.body));
    // var a = recipe!.meals![1].strCategory;
    // print(a);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: recipe == null
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: recipe!.meals!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return EachCategoryPage(
                            categoryName:
                                recipe!.meals![index].strCategory.toString(),
                          );
                        },
                      ));
                    },
                    leading: Text(
                      recipe!.meals![index].strCategory.toString(),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
