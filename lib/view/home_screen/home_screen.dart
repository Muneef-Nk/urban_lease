import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:rent_cruise/database/db.dart';
import 'package:rent_cruise/model/products_model.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/home_screen/All_Category.dart';
import 'package:rent_cruise/view/home_screen/Mycard.dart';
import 'package:rent_cruise/view/home_screen/seleted_category/selected_category.dart';
import 'package:rent_cruise/view/location/search_location.dart';
import 'package:rent_cruise/view/notification_screen/notification_screen.dart';
import 'package:rent_cruise/view/search_screen/search_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final PageController controller1 = PageController(viewportFraction: 0.8);
  CarouselController buttonCarouselController = CarouselController();
  int activeIndex = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
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
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.location_on,
                            size: 27,
                            color: ColorConstant.primaryColor,
                          ),
                        ),
                        Text(
                          "Choose your location",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              child: Icon(
                                Icons.notifications,
                                color: ColorConstant.primaryColor,
                              ),
                              backgroundColor:
                                  Color.fromARGB(255, 231, 231, 231),
                            ),
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
                              itemCount: 5,
                              itemBuilder: (context, index, realIndex) {
                                return Text(
                                    // "Search ${categoriessssssss[index]['name']}",
                                    "jj",
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
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        // child: CarouselSlider.builder(
                        //   carouselController: buttonCarouselController,
                        //   options: CarouselOptions(
                        //     height: 200,
                        //     aspectRatio: 16 / 9,
                        //     viewportFraction: 1,
                        //     initialPage: 0,
                        //     enableInfiniteScroll: true,
                        //     reverse: false,
                        //     autoPlay: true,
                        //     autoPlayInterval: Duration(seconds: 3),
                        //     autoPlayAnimationDuration:
                        //         Duration(milliseconds: 800),
                        //     autoPlayCurve: Curves.fastOutSlowIn,
                        //     enlargeCenterPage: true,
                        //     enlargeFactor: 0.3,
                        //     scrollDirection: Axis.horizontal,
                        //     onPageChanged: (index, reason) {
                        //       setState(() {
                        //         activeIndex = index;
                        //         print(activeIndex);
                        //       });
                        //     },
                        //   ),
                        //   itemCount: 5
                        // itemBuilder: (context, index, realIndex) {
                        //   final urlImages = imgList[index];
                        //   return Container(
                        //     width: double.infinity,
                        //     child: ClipRRect(
                        //       borderRadius: BorderRadius.circular(20),
                        //       child: Image.network(
                        //         urlImages,
                        //         fit: BoxFit.fill,
                        //       ),
                        //     ),
                        //   );
                        // },
                        //   ),
                        // ),
                        // Positioned(
                        //   left: 0,
                        //   right: 0,
                        //   bottom: 20,
                        //   child: DotsIndicator(
                        //     decorator: DotsDecorator(
                        //         activeColor: ColorConstant.primaryColor,
                        //         size: Size(10, 10)),
                        //     // dotsCount: imgList.length,
                        //     position: activeIndex,
                        //   ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 5, right: 10, left: 10),
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
                        height: 100,
                        child: ListView.builder(
                          itemCount: Database.categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SelectedCategory(
                                            selectedIndex: index,
                                          )));
                                },
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 38,
                                      // backgroundImage: NetworkImage(
                                      //   categories[index]['image'].toString(),
                                      // ),
                                      backgroundColor: Colors.amber,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      Database.categories[index]
                                          ["categoryName"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: ColorConstant.primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Flash Rent",
                      style: TextStyle(
                          color: ColorConstant.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(9),
                child: GridView.builder(
                  itemCount: dataList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      mainAxisExtent: MediaQuery.sizeOf(context).height * .43,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Mycard(index: index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
