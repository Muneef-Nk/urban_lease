import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/Profile/profile..dart';
import 'package:rent_cruise/view/cart_screen/cart_screen.dart';
import 'package:rent_cruise/view/home_screen/All_Category.dart';
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
    Center(
      child: Text("chat screen "),
    ),
    AllCategory(),
    CartScreen(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CircleNavBar(
        activeIcons: [
          Icon(Icons.person, color: Colors.black),
          Icon(Icons.chat, color: Colors.black),
          Icon(
            Icons.add,
            color: Colors.black,
            size: 35,
          ),
          Icon(Icons.shopping_cart, color: Colors.black),
          Icon(Icons.person, color: Colors.black),
        ],
        inactiveIcons: [
          Text(
            "Home",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Chat ",
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
        padding: EdgeInsets.only(left: 7, right: 7, bottom: 7),
        cornerRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        // shadowColor: Colors.deepPurple,
        // circleShadowColor: Colors.deepPurple,
        elevation: 0,

        activeIndex: _currentIndex,
      ),
      body: screens[_currentIndex],
    );
  }
}
