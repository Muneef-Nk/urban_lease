import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';

class CartContainer extends StatelessWidget {
  const CartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          width: 130,
          height: 150,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 207, 207, 205),
              borderRadius: BorderRadius.circular(15)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            // child: Image.network(
            //   provider.card[index].image,
            //   // product[index].image,
            //   fit: BoxFit.cover,
            // ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'bubhbbhhb',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 250,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          topLeft: Radius.circular(30))),
                                  child: Column(children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Remove from cart?",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(8),
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 207, 207, 205),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            // child: Image.network(
                                            //   provider.card[index].image,
                                            //   // product[index].image,
                                            //   fit: BoxFit.cover,
                                            // ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 200,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Maruthi Car',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Voluptate sit qui magna laborum incididunt voluptate.',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[300],
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                              child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                        Container(
                                          width: 150,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: ColorConstant.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                              child: Text(
                                            "Yes, remove",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        )
                                      ],
                                    )
                                  ]),
                                );
                              });
                        },
                        child: Icon(Icons.delete))
                  ],
                ),
                Text(
                  'jbjbjhb',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[900],
                  ),
                  maxLines: 2,
                ),
                Text(
                  'bbbjh',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'jbjb',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          '240 /w',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        onTap: () {
                          //

                          print('remove total');
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 15,
                          ),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "0",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        onTap: () {
                          //
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
