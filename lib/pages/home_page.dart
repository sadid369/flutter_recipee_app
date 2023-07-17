import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_recipee_app/Widgets/image_frame.dart';
import 'package:flutter_recipee_app/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hi, Sadid",
                        style: TextStyle(
                          color: Constant.colors,
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "Welcome, for delicious recipe ",
                        style: TextStyle(
                          color: Constant.colors,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(Constant.profilePic),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  // BoxShadow(
                  //   color: Constant.colors.withOpacity(0.1),
                  //   spreadRadius: 05,
                  //   blurRadius: 30,
                  //   offset: Offset(-3, 3),
                  // ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  label: Text(
                    'Search Recipe Here',
                    style: TextStyle(
                        color: Constant.colors.withOpacity(0.3),
                        fontWeight: FontWeight.bold),
                  ),
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Constant.colors,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Constant.colors.withOpacity(0.2),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 105,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Constant.colors,
                        borderRadius: BorderRadius.circular(18)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mosque_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Indian',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 105,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Constant.colors,
                        borderRadius: BorderRadius.circular(18)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.adjust,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Japan',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 105,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Constant.colors,
                        borderRadius: BorderRadius.circular(18)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.airlines_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Thai',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Constant.featurePic),
                    ),
                  ),
                  height: 120,
                ),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                      stops: [0.2, 1.0],
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                      colors: [
                        Color(0xFFFF3D00).withOpacity(0.8),
                        Colors.white.withOpacity(0.4),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: MediaQuery.of(context).size.width * 0.09,
                  child: const Text(
                    "Ingredient",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Popular Recipes',
                style: TextStyle(
                  color: Color(
                    0xFFFF3D00,
                  ),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Constant.rImage.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(Constant.rImage[index],
                          width: 120, fit: BoxFit.cover),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 1),
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  BoxShadow(
                    offset: Offset(2, 1),
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.32),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                    Icons.home,
                    color: Color(0xFFFF3D00),
                  ),
                  Icon(
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                    Icons.favorite,
                    color: Colors.grey,
                  ),
                  Icon(
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                    Icons.notifications_sharp,
                    color: Colors.grey,
                  ),
                  Icon(
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                    Icons.account_circle,
                    color: Colors.grey,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
