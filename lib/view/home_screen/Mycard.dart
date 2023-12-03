import 'package:flutter/material.dart';
import 'package:rent_cruise/model/products_model.dart';
import 'package:rent_cruise/view/product_detail_screen/product_detail_screen.dart';

class Mycard extends StatefulWidget {
  const Mycard({super.key, required this.index});
  final int index;

  @override
  State<Mycard> createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(
                  index: widget.index,
                  dataList: [],
                )));
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
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(
                    dataList[widget.index].img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(top: 8, right: 8, child: Icon(Icons.favorite))
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10),
              child: Text(
                dataList[widget.index].name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                dataList[widget.index].desc,
                style: TextStyle(),
                textAlign: TextAlign.justify,
                maxLines: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 7),
              child: Row(
                children: [
                  Text(
                    "₹ ${dataList[widget.index].price}",
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
                        dataList[widget.index].rating,
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
