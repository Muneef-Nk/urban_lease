import 'package:flutter/material.dart';

import '../../../utils/color_constant.dart/color_constant.dart';

class active_screen extends StatefulWidget {
  const active_screen({super.key});

  @override
  State<active_screen> createState() => _active_screenState();
}

class _active_screenState extends State<active_screen> {
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
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              "https://i.pinimg.com/564x/49/54/c8/4954c88ff4aadb23137332c8733ba79d.jpg",
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: ColorConstant.primaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Center(
                          child: Text(
                            "Track Order",
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
