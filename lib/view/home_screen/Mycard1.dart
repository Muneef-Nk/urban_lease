import 'package:flutter/material.dart';
import 'package:rent_cruise/view/product_detail_screen/product_detail_screen.dart';

class Mycard1 extends StatefulWidget {
  const Mycard1({super.key});

  @override
  State<Mycard1> createState() => _Mycard1State();
}

class _Mycard1State extends State<Mycard1> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ProductDetailsScreen()));
      },
      child: Container(
        // height: 400,
        // margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                height: MediaQuery.sizeOf(context).height * .233,
                width: double.infinity,
                child: Image.network(
                    "https://i1.adis.ws/i/canon/eos-r5_front_rf24-105mmf4lisusm_32c26ad194234d42b3cd9e582a21c99b"),
              ),
              Positioned(top: 8, right: 8, child: Icon(Icons.favorite))
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Dolore anim in in velit qui consequat eu cupidatat Lorem dolor."),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 7),
              child: Row(
                children: [
                  Text(
                    "₹500",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 5),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         width: 80,
            //         height: 40,
            //         decoration: BoxDecoration(
            //             border:
            //                 Border.all(color: Colors.black.withOpacity(0.7)),
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(10)),
            //         child: Center(
            //             child: Text(
            //           "Add to Cart",
            //           style: TextStyle(
            //               color: ColorConstant.primaryColor,
            //               fontSize: 12,
            //               fontWeight: FontWeight.bold),
            //         )),
            //       ),
            //       Container(
            //         width: 80,
            //         height: 40,
            //         decoration: BoxDecoration(
            //             color: ColorConstant.primaryColor,
            //             borderRadius: BorderRadius.circular(10)),
            //         child: Center(
            //             child: Text(
            //           "Rent Now",
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 12,
            //               fontWeight: FontWeight.bold),
            //         )),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
