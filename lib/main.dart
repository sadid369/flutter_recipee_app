import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/pages/Auth/auth_page.dart';
import 'package:flutter_recipee_app/pages/home_page.dart';
import 'package:flutter_recipee_app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashPage());
  }
}
