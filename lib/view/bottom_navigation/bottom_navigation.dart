import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/Profile/profile..dart';
import 'package:rent_cruise/view/home_screen/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  List screens = [
    Homescreen(),
    Homescreen(),
    Homescreen(),
    Homescreen(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CircleNavBar(
        activeIcons: [
          Icon(Icons.person, color: Colors.black),
          Icon(Icons.search, color: Colors.black),
          Icon(Icons.add, color: Colors.black),
          Icon(Icons.shopping_cart, color: Colors.black),
          Icon(Icons.person, color: Colors.black),
        ],
        inactiveIcons: [
          Text(
            "Home",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Search",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Rent",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Cart",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Profile",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
        color: ColorConstant.primaryColor,
        circleColor: Colors.grey.withOpacity(0.4),
        height: 70,
        circleWidth: 50,
        // tabCurve: ,
        onTap: (i) {
          setState(() {
            _currentIndex = i;
          });
        },
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        // shadowColor: Colors.deepPurple,
        // circleShadowColor: Colors.deepPurple,
        elevation: 10,

        activeIndex: _currentIndex,
      ),
      body: screens[_currentIndex],
    );
  }
}
