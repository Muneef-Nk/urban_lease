import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_cruise/controller/login_controller/login_controller.dart';
import 'package:rent_cruise/service/location_service.dart';
import 'package:rent_cruise/view/bottom_navigation/bottom_navigation.dart';
import 'package:rent_cruise/view/edit_profile/edit_profile.dart';
import 'package:rent_cruise/view/location/location_screen.dart';
import 'package:rent_cruise/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginScreenController()),
        ChangeNotifierProvider(create: (context) => LocationProvider()),
        ChangeNotifierProvider(create: (context) => SearchController())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false, home: LocationScreen()),
    );
  }
}
