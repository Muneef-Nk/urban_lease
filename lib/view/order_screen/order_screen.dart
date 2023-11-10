import 'dart:ffi';

import 'package:flutter/material.dart';

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
      child: Scaffold(appBar:
         AppBar(
          title: Text(
            "My Orders",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.brown,
            dividerColor: Colors.brown,
            indicatorColor: Colors.brown,
            tabs: [
            Tab(
              text: "Active",
            ),
            Tab(text: "Completed",),
            Tab(text: "Cancelled",)
          ]),
        ),
        body: SingleChildScrollView(
          child: TabBarView(
            children: [
              Column(
                children: [
                  ListView.builder(itemBuilder: (context, index) {
                    return
                  },)
                ],
              )
        
            ],
          ),
        ),
        
      ),
    );
  }
}