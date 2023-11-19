import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/Profile/helpCenter.dart';
import 'package:rent_cruise/view/Profile/profile..dart';
import 'package:rent_cruise/view/Profile/settings.dart';
import 'package:rent_cruise/view/chat/chat_screen.dart';
import 'package:rent_cruise/view/favourite_screen/favourite_screen.dart';
import 'package:rent_cruise/view/home_screen/home_screen.dart';
import 'package:rent_cruise/view/notification_screen/notification_screen.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  bool onClick = true;
  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Home",
            baseStyle: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            selectedStyle: TextStyle(color: Colors.white54),
            colorLineSelected: Colors.white24),
        Homescreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Profile",
            baseStyle: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            selectedStyle: TextStyle(color: Colors.white54),
            colorLineSelected: Colors.white24),
        Profile(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Bookmark",
            baseStyle: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            selectedStyle: TextStyle(color: Colors.white54),
            colorLineSelected: Colors.white24),
        favourite_screeen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Notifications",
            baseStyle: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            selectedStyle: TextStyle(color: Colors.white54),
            colorLineSelected: Colors.white24),
        NotificationScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Messages",
            baseStyle: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            selectedStyle: TextStyle(color: Colors.white54),
            colorLineSelected: Colors.white24),
        ChatScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Settings",
            baseStyle: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            selectedStyle: TextStyle(color: Colors.white54),
            colorLineSelected: Colors.white24),
        Settings(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Help",
            baseStyle: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            selectedStyle: TextStyle(color: Colors.white54),
            colorLineSelected: Colors.white24),
        HelpCenter(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Logout",
            baseStyle: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            selectedStyle: TextStyle(color: Colors.white54),
            colorLineSelected: Colors.white24),
        Homescreen(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        backgroundColorMenu: ColorConstant.primaryColor,
        screens: _pages,
        slidePercent: 50,
        isDraggable: true,
        backgroundColorAppBar: Color.fromARGB(255, 248, 248, 248),
        elevationAppBar: 0,
        leadingAppBar: InkWell(
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ));
  }
}
