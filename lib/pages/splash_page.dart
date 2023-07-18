import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/constant.dart';
import 'package:flutter_recipee_app/pages/Auth/auth_page.dart';
import 'package:flutter_recipee_app/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 0), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AuthPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF3D00),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(Constant.logo),
      ),
    );
  }
}
