import 'package:hackathon_1/screens/home.dart';
import 'package:hackathon_1/screens/login.dart';
import 'package:hackathon_1/screens/onboarding.dart';
import 'package:hackathon_1/screens/productdiscrpscc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
