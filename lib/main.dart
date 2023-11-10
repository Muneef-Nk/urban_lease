import 'package:flutter/material.dart';
import 'package:rent_cruise/view/home_screen/home_screen.dart';

import 'package:rent_cruise/view/product_detail_screen/product_detail_screen.dart';

import 'package:rent_cruise/view/login_screen/login_scrren.dart';
import 'package:rent_cruise/controller/login_controller/login_controller.dart';

import 'package:rent_cruise/view/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginScreenController())
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        
      ),

    );
  }
}
