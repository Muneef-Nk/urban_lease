import 'package:flutter/material.dart';
import 'package:rent_cruise/view/home_screen/home_screen.dart';

import 'package:rent_cruise/view/product_detail_screen/product_detail_screen.dart';

import 'package:rent_cruise/view/login_screen/login_scrren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Homescreen(),
        //ptr
      ),
    );
  }
}
