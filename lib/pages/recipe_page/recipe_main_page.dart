import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/constant.dart';

class RecipeMainPage extends StatefulWidget {
  const RecipeMainPage({Key? key}) : super(key: key);

  @override
  _RecipeMainPageState createState() => _RecipeMainPageState();
}

class _RecipeMainPageState extends State<RecipeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset(Constant.rImage[1]),
          )
        ],
      ),
    );
  }
}
