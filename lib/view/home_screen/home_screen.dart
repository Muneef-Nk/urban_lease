import 'package:flutter/material.dart';
import 'package:rent_cruise/view/home_screen/All_Category.dart';
import 'package:rent_cruise/view/home_screen/Full_list.dart';
import 'package:rent_cruise/view/home_screen/Mycard1.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final controller1 = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 167, 128, 100),
                      ),
                      Text(
                        "New york,USA",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.expand_more,
                          size: 30,
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        child: Icon(
                          Icons.notifications,
                          color: Colors.brown,
                        ),
                        backgroundColor: Color.fromARGB(255, 231, 231, 231),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 290,
                        child: SearchBar(
                          hintText: "Search",
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color(0xFF704F38),
                        child: Icon(
                          Icons.tune,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    height: 250,
                    child: PageView(
                      controller: controller1,
                      children: [
                        Image.network(
                            "https://c8.alamy.com/comp/W0T52Y/medical-staff-with-tablets-vector-illustration-young-nurse-and-physician-with-futuristic-gadgets-cartoon-characters-innovative-technologies-in-medicine-doctors-working-with-interactive-displays-W0T52Y.jpg"),
                        Image.network(
                            "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX24122004.jpg"),
                        Image.network(
                            "http://t0.gstatic.com/licensed-image?q=tbn:ANd9GcRqTGjtLDcivySsgR-m4koBthDiv9bg2wTgENt1gymSmlc7mC-taFQKalKPh4HBz59aFjfqH__ZnI5bLuucTBQ"),
                        Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs4wyC9kYSY0emlVRJQEtBvKoUQE-eQO3sxA&usqp=CAU")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  SmoothPageIndicator(
                    controller: controller1,
                    count: 4,
                    effect: SwapEffect(dotHeight: 10, dotWidth: 10),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Category",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AllCategory(),
                                )),
                            child: Text(
                              "See All",
                              style: TextStyle(
                                color: Color(0xFF704F38),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              // child: ClipOval(
                              //   child: Container(
                              //     width: 50,
                              //     height: 5,
                              //     color: Colors.brown,
                              //     child: Center(
                              //       child: Image.network(
                              //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeSS4Xu88QIhuZZZuzxMNOJa8IAU6HmeoxWA0G-O3A1g&s",
                              //         fit: BoxFit.,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              child: Container(
                                  width: 83,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.brown),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.two_wheeler,
                                        size: 40,
                                      ))),
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Flash Sale",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FullList(),
                      )),
                  child: Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xFF704F38),
                    ),
                  ),
                ),
                SizedBox(width: 5)
              ],
            ),
            SizedBox(
              child: GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 250, crossAxisCount: 2),
                itemBuilder: (context, index) => Mycard1(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
