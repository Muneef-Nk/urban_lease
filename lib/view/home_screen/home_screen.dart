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
    List<Map<String, String>> categories = [
      {
        'image':
            'https://media.istockphoto.com/id/1196974664/photo/set-of-home-kitchen-appliances-in-the-room-on-the-wall-background.jpg?s=612x612&w=0&k=20&c=dUSAMg-LUh6j-4437kz30w8k7KgJiR8yrTTXhGiFh0s=',
        'name': 'HOME EQUIPMENTS',
      },
      {
        'image':
            'https://img.freepik.com/premium-photo/medical-equipment-device-isolated-white-background_178789-339.jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1699056000&semt=ais',
        'name': 'MEDICAL EQUIPMENTS',
      },
      {
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlM4cUvl-LzV5jTnFp48nod4uOfn9lpBgnbQ&usqp=CAU',
        'name': 'FURNITURE',
      },
      {
        'image':
            'https://img1.wsimg.com/isteam/ip/119e2d1b-0ed9-4a03-a51a-334684501753/news12_5.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=h:1000,cg:true',
        'name': 'ELECTRONICS',
      },
    ];
    bool islocation = false;
    TextEditingController searchController = TextEditingController();
    TextEditingController locationController = TextEditingController();
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
                      Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 167, 128, 100),
                      ),
                      Text(
                        "Choose your location",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return StatefulBuilder(
                                builder: (context, setState) {
                                  return Container(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.32,
                                    child: Column(
                                      children: [
                                        ListTile(
                                          trailing: IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: Icon(
                                                Icons.close,
                                                color: Colors.black,
                                              )),
                                          leading: Icon(
                                            Icons.location_on,
                                            color: Colors.black,
                                          ),
                                          title: Text(
                                            "Choose location",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              "choose a delivery location to see product availability and delivery option"),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                .width,
                                            child: TextFormField(
                                              controller: locationController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: "Enter Pincode",
                                                labelText: "Enter pincode",
                                                suffix: InkWell(
                                                  onTap: () {
                                                    setState(
                                                      () {
                                                        islocation =
                                                            !islocation;
                                                      },
                                                    );
                                                  },
                                                  child: islocation
                                                      ? Text("Submit")
                                                      : Text("Change"),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        ListTile(
                                          leading: Icon(
                                            Icons.location_on,
                                            color: Colors.brown,
                                          ),
                                          title: Text(
                                            "Use your current location",
                                            style:
                                                TextStyle(color: Colors.brown),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
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
                        width: MediaQuery.sizeOf(context).width * .75,
                        child: TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            labelText: 'Search',
                            prefixIcon: Icon(Icons.search),
                          ),
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
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                          ],
                        ),
                        // borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: PageView(
                        controller: controller1,
                        children: [
                          Image.network(
                            "https://c8.alamy.com/comp/W0T52Y/medical-staff-with-tablets-vector-illustration-young-nurse-and-physician-with-futuristic-gadgets-cartoon-characters-innovative-technologies-in-medicine-doctors-working-with-interactive-displays-W0T52Y.jpg",
                            fit: BoxFit.fill,
                          ),
                          Image.network(
                            "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX24122004.jpg",
                            fit: BoxFit.fill,
                          ),
                          Image.network(
                            "http://t0.gstatic.com/licensed-image?q=tbn:ANd9GcRqTGjtLDcivySsgR-m4koBthDiv9bg2wTgENt1gymSmlc7mC-taFQKalKPh4HBz59aFjfqH__ZnI5bLuucTBQ",
                            fit: BoxFit.fill,
                          ),
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs4wyC9kYSY0emlVRJQEtBvKoUQE-eQO3sxA&usqp=CAU",
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 9),
                  SmoothPageIndicator(
                    controller: controller1,
                    count: 4,
                    effect: SwapEffect(
                        type: SwapType.yRotation,
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: Colors.black),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15, top: 5),
                        child: Row(
                          children: [
                            Text(
                              "Category",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.brown,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AllCategory(),
                                ),
                              ),
                              child: Text(
                                "See All",
                                style: TextStyle(
                                  color: Color(0xFF704F38),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 45,
                                    backgroundImage: NetworkImage(
                                      categories[index]['image'].toString(),
                                    ),
                                    backgroundColor: Colors.transparent,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    categories[index]['name'].toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 8,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
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
                  padding: const EdgeInsets.only(left: 20, bottom: 15, top: 5),
                  child: Text(
                    "Flash Sale",
                    style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
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
