import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_recipee_app/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
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
                          fontWeight: FontWeight.bold,
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
            Container(
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.asset(
                        Constant.featurePic,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    ClipRRect(
                      // Clip it cleanly.
                      child: BackdropFilter(
                        filter: ColorFilter.mode(
                            Constant.colors.withOpacity(0.5),
                            BlendMode.softLight),
                        child: Container(
                            color: Constant.colors.withOpacity(0.1),
                            alignment: Alignment.center,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tuna Salad',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
