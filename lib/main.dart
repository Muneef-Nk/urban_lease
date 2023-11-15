import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_cruise/controller/login_controller/login_controller.dart';
import 'package:rent_cruise/service/location_service.dart';
import 'package:rent_cruise/view/Profile/profile..dart';
import 'package:rent_cruise/view/home_screen/Mycard1.dart';
import 'package:rent_cruise/view/home_screen/home_screen.dart';
import 'package:rent_cruise/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
<<<<<<< HEAD
        providers: [
          ChangeNotifierProvider(create: (context) => LoginScreenController()),
          ChangeNotifierProvider(create: (context) => LocationProvider()),
          ChangeNotifierProvider(create: (context) => SearchController())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ));
=======
      providers: [
        ChangeNotifierProvider(create: (context) => LoginScreenController()),
        ChangeNotifierProvider(create: (context) => LocationProvider()),
        ChangeNotifierProvider(create: (context) => SearchController())
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Homescreen()),
    );
>>>>>>> c96ff97bdf1915b8b7bc92b39f4bb323f8a90224
  }
}
