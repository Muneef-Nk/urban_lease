import 'package:flutter/material.dart';

import '../../../utils/color_constant.dart/color_constant.dart';

class Completed_screen extends StatefulWidget {
  const Completed_screen({super.key});

  @override
  State<Completed_screen> createState() => _Completed_screenState();
}

class _Completed_screenState extends State<Completed_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              "https://i.pinimg.com/564x/a9/71/26/a9712669d443d3203ac074924d2afb71.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DSLR Camera",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "400 Rs./day",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 20,
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: ColorConstant.primaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Center(
                          child: Text(
                            "Leave Review",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.2,
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
      ),
    );
  }
}
