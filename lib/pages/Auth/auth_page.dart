import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/Custom%20Widgets/custom_button.dart';
import 'package:flutter_recipee_app/constant.dart';
import 'package:flutter_recipee_app/pages/home_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLoadingLogin = false;
  bool isLoadingRegister = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset(
              Constant.welcome,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ColorFilter.mode(Constant.colors, BlendMode.dstIn),
              child: Container(
                // margin: EdgeInsets.only(top: 120),
                padding: EdgeInsets.only(top: 80),
                color: Constant.colors.withOpacity(0.1),
                alignment: Alignment.topCenter,
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 65,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 70,
            right: 0,
            left: 0,
            child: Container(
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    title: 'Login',
                    onTap: isLoadingLogin == false
                        ? () {
                            setState(() {
                              isLoadingLogin = true;
                            });
                            Timer(Duration(seconds: 0), () {
                              setState(() {
                                isLoadingLogin = false;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            });
                          }
                        : null,
                    mColor: Constant.colors,
                    mWidth: 150,
                    mHeihth: 60,
                  ),
                  CustomButton(
                    title: 'Register',
                    onTap: isLoadingLogin == false
                        ? () {
                            setState(() {
                              isLoadingLogin = true;
                            });
                            Timer(Duration(seconds: 0), () {
                              setState(() {
                                isLoadingLogin = false;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            });
                          }
                        : null,
                    mColor: Constant.colors,
                    mWidth: 150,
                    mHeihth: 60,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
