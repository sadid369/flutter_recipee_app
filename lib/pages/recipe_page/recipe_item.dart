// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/constant.dart';
import 'package:flutter_recipee_app/model/recipe.dart';
import 'package:http/http.dart' as http;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RecipeItem extends StatefulWidget {
  final String recipeId;
  const RecipeItem({
    Key? key,
    required this.recipeId,
  }) : super(key: key);

  @override
  _RecipeItemState createState() => _RecipeItemState();
}

class _RecipeItemState extends State<RecipeItem> {
  Recipe? recipe;
  bool isYPlay = false;
  String? videoId;
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    getRecipe(id: widget.recipeId);
  }

  Future<void> getRecipe({required String id}) async {
    try {
      http.Response res = await http.get(Uri.parse(
          "https://www.themealdb.com/api/json/v1/1/lookup.php?i=$id"));
      recipe = Recipe.fromMap(jsonDecode(res.body));
      iterateMap();
      videoId = YoutubePlayer.convertUrlToId(
          "${recipe!.meals![0].strYoutube.toString()}");
      _controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      );
    } catch (e) {
      print(e.toString());
    }
    setState(() {});
  }

  List<String> ingredient = [];
  List<String> measure = [];
  void iterateMap() {
    recipe!.meals![0].toMap().forEach((key, value) {
      if (key.contains("strIngredient") &&
          recipe!.meals![0].toMap()[key] != null &&
          recipe!.meals![0].toMap()[key].isNotEmpty &&
          recipe!.meals![0].toMap()[key] != " ") {
        ingredient.add(value);
      }
      if (key.contains("strMeasure") &&
          recipe!.meals![0].toMap()[key] != null &&
          recipe!.meals![0].toMap()[key].isNotEmpty &&
          recipe!.meals![0].toMap()[key] != " ") {
        measure.add(value);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    print("called Dispose");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isYPlay
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Constant.colors.withOpacity(0.4),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                      isYPlay = !isYPlay;
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.videocam_off,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: YoutubePlayer(
                    controller: _controller,
                  ),
                ),
              ],
            )
          : recipe == null
              ? Center(
                  child: const CircularProgressIndicator(
                  color: Constant.colors,
                ))
              : Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                recipe!.meals![0].strMealThumb.toString(),
                              ))),
                    ),
                    Positioned(
                      top: 80,
                      left: 10,
                      right: 20,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        // height: 80,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Constant.colors.withOpacity(0.4),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Constant.colors.withOpacity(0.4),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  isYPlay = !isYPlay;
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.ondemand_video,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.only(left: 25, right: 45),
                        height: 500,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Constant.colors.withOpacity(0.4),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(60),
                          ),
                        ),
                        child: Column(
                          children: [
                            // Container(
                            //   margin: EdgeInsets.only(top: 25),
                            //   // padding: EdgeInsets.only(right: 25, left: 25),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Container(
                            //         width: MediaQuery.of(context).size.width * 0.15,
                            //         child: Row(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.spaceEvenly,
                            //           children: [
                            //             Icon(
                            //               Icons.star,
                            //               color: Colors.white,
                            //               size: 20,
                            //             ),
                            //             Text(
                            //               "4.8",
                            //               style: TextStyle(color: Colors.white),
                            //             )
                            //           ],
                            //         ),
                            //       ),
                            //       Container(
                            //         width: MediaQuery.of(context).size.width * 0.15,
                            //         child: Row(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.spaceEvenly,
                            //           children: [
                            //             Icon(
                            //               Icons.message,
                            //               color: Colors.white,
                            //               size: 20,
                            //             ),
                            //             Text(
                            //               "604",
                            //               style: TextStyle(color: Colors.white),
                            //             )
                            //           ],
                            //         ),
                            //       ),
                            //       Container(
                            //         width: MediaQuery.of(context).size.width * 0.15,
                            //         child: Row(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.spaceEvenly,
                            //           children: [
                            //             Icon(
                            //               Icons.timer,
                            //               color: Colors.white,
                            //               size: 20,
                            //             ),
                            //             Text(
                            //               "4.8",
                            //               style: TextStyle(color: Colors.white),
                            //             )
                            //           ],
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Recipe',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: FittedBox(
                                child: Text(
                                    recipe!.meals![0].strMeal.toString(),
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Ingredient',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 150,
                              margin: EdgeInsets.only(bottom: 5),
                              child: ListView.builder(
                                padding: EdgeInsets.all(0),
                                itemCount: ingredient.length,
                                itemBuilder: (context, index) {
                                  return Text(
                                    "➡️  ${measure[index]} ${ingredient[index]}",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Instructions',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 5),
                                height: 150,
                                padding: EdgeInsets.only(bottom: 5),
                                child: ListView(
                                  padding: EdgeInsets.all(0),
                                  children: [
                                    Text(
                                      recipe!.meals![0].strInstructions
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
    );
  }
}
