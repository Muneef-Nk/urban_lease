import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_cruise/controller/product_details_provider/product_details_provider.dart';
import 'package:rent_cruise/view/home_screen/home_screen.dart';
<<<<<<<<< Temporary merge branch 1
import 'package:rent_cruise/view/login_screen/login_scrren.dart';
=========
import 'package:rent_cruise/view/product_detail_screen/product_detail_screen.dart';
>>>>>>>>> Temporary merge branch 2

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

<<<<<<<<< Temporary merge branch 1
      home: LoginScreen(),

=========
      home:ProductDetailsScreen(),
      
    );
>>>>>>>>> Temporary merge branch 2
    
    );
  }
}
