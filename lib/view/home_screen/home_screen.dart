import 'package:flutter/material.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color(0xFF704F38),
                      size: 25,
                    ),
                    Text(
                      "New york,USA",
                      style: TextStyle(fontSize: 20),
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
                        color: Colors.black,
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
                // Container(
                //   height: 300,
                //   width: 300,
                //   child: ListView.builder(
                //     itemCount: 4,
                //     scrollDirection: Axis.horizontal,
                //     itemBuilder: (context, index) {
                //       return Container(
                //         height: 250,
                //         width: 300,
                //         child: Image.network(
                //             "https://www.businessinsider.in/photo/70913057/25-useful-android-accessories-and-compatible-gadgets-to-use-with-your-phone.jpg"),
                //       );
                //     },
                //   ),
                // )
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
                          child: Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xFF704F38),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [CircleAvatar()],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
