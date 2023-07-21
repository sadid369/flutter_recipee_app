import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/Custom%20Widgets/category_display_card.dart';
import 'package:flutter_recipee_app/constant.dart';
import 'package:flutter_recipee_app/model/categories.dart';
import 'package:flutter_recipee_app/model/recipe.dart';
import 'package:flutter_recipee_app/pages/recipe_page/each_category_page.dart';
import 'package:http/http.dart' as http;

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  Categorie? categorie;

  @override
  void initState() {
    super.initState();
    getAllCategory();
  }

  Future<void> getAllCategory() async {
    http.Response res = await http.get(
        Uri.parse("https://www.themealdb.com/api/json/v1/1/categories.php"));
    categorie = Categorie.fromMap(jsonDecode(res.body));
    // var a = recipe!.meals![1].strCategory;
    // print(a);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Category'),
        backgroundColor: Constant.colors,
      ),
      body: categorie == null
          ? Center(
              child: const CircularProgressIndicator(
              color: Constant.colors,
            ))
          : ListView.builder(
              itemCount: categorie!.categories!.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EachCategoryPage(
                                    categoryName: categorie!
                                        .categories![index].strCategory
                                        .toString(),
                                  )));
                    },
                    child: CategoryDisplayCard(
                        categorie: categorie!, index: index));
              },
            ),
    );
  }
}
