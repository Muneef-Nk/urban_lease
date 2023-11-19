import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/home_screen/All_Category.dart';
import 'package:rent_cruise/view/home_screen/Full_list.dart';
import 'package:rent_cruise/view/home_screen/Mycard1.dart';
import 'package:rent_cruise/view/location/search_location.dart';
import 'package:rent_cruise/view/notification_screen/notification_screen.dart';
import 'package:rent_cruise/view/search_screen/search_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final PageController controller1 = PageController(viewportFraction: 0.8);
  CarouselController buttonCarouselController = CarouselController();
  int activeIndex = 0;

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
        'name': 'Electronics',
      },
    ];

    List imgList = [
      'https://www.themobileindian.com/wp-content/uploads/2022/04/Furlenco-1024x576.jpg',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30, right: 10),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SearchLocation(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 27,
                          color: ColorConstant.primaryColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Choose your location",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.expand_more,
                            size: 30,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            //
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => NotificationScreen()));
                          },
                          child: CircleAvatar(
                            child: Icon(
                              Icons.notifications,
                              color: ColorConstant.primaryColor,
                            ),
                            backgroundColor: Color.fromARGB(255, 231, 231, 231),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => search_screen()));
                    },
                    child: Container(
                      height: 55,
                      width: MediaQuery.sizeOf(context).width * .95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(
                              width: 10,
                            ),
                            CarouselSlider.builder(
                              carouselController: buttonCarouselController,
                              options: CarouselOptions(
                                initialPage: 0,
                                aspectRatio: 4,
                                enlargeCenterPage: true,
                                autoPlay: true,
                                autoPlayInterval: Duration(seconds: 3),
                                autoPlayAnimationDuration:
                                    Duration(milliseconds: 800),
                                scrollDirection: Axis.vertical,
                              ),
                              itemCount: categories.length,
                              itemBuilder: (context, index, realIndex) {
                                return Text(
                                    "Search ${categories[index]['name']}",
                                    style: TextStyle(
                                        color: ColorConstant.primaryColor));
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      CarouselSlider.builder(
                        carouselController: buttonCarouselController,
                        options: CarouselOptions(
                          height: 200,
                          aspectRatio: 16 / 9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                              print(activeIndex);
                            });
                          },
                        ),
                        itemCount: imgList.length,
                        itemBuilder: (context, index, realIndex) {
                          final urlImages = imgList[index];
                          return Container(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              child: Image.network(
                                urlImages,
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 15),
                      AnimatedSmoothIndicator(
                        count: 6,
                        activeIndex: activeIndex,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 5, right: 10),
                        child: Row(
                          children: [
                            Text(
                              "Category",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: ColorConstant.primaryColor,
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
                                  color: ColorConstant.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * .19,
                        child: ListView.builder(
                          itemCount: categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
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
                                      fontSize: 10,
                                      color: ColorConstant.primaryColor,
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
                        color: ColorConstant.primaryColor,
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
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.primaryColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5)
              ],
            ),
            Container(
              padding: EdgeInsets.all(9),
              child: GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    mainAxisExtent: MediaQuery.sizeOf(context).height * .40,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Mycard1(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
