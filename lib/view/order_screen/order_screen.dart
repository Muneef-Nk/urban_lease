import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/order_screen/active_screen/active_screen.dart';
import 'package:rent_cruise/view/order_screen/cancelled_screen/cancelled_screen.dart';
import 'package:rent_cruise/view/order_screen/completed_screen/completed_screen.dart';

class order_screen extends StatefulWidget {
  const order_screen({super.key});

  @override
  State<order_screen> createState() => _order_screenState();
}

class _order_screenState extends State<order_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(onTap: (){},
            child: Icon(Icons.arrow_back)),
          title: Text(
            "My Orders",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
              labelColor: ColorConstant.primaryColor,
              dividerColor: ColorConstant.primaryColor,
              indicatorColor: ColorConstant.primaryColor,
              tabs: [
                Tab(
                  text: "Active",
                ),
                Tab(
                  text: "Completed",
                ),
                Tab(
                  text: "Cancelled",
                )
              ]),
        ),
        body: TabBarView(
          children: [
            active_screen(),
            Completed_screen(),
            Cancelled_screen(),
          ],
        ),
      ),
    );
  }
}
