import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/cart_screen/widgets/cart_container.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: ColorConstant.primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Total: ₹1235",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                // showModalBottomSheet(
                //     backgroundColor: Colors.transparent,
                //     context: context,
                //     builder: (context) {
                //       return Container(
                //         padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                //         height: 250,
                //         decoration: BoxDecoration(
                //             color: Colors.white,
                //             borderRadius: BorderRadius.only(
                //                 topRight: Radius.circular(30),
                //                 topLeft: Radius.circular(30))),
                //         child: Column(children: [
                //           Row(
                //             children: [
                //               Text("Sub "),
                //               Text("fdkjnsvkfndsmvdsgfdbdfjgnfdkj"),
                //             ],
                //           )
                //         ]),
                //       );
                //     });
              },
              child: Container(
                width: 150,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(top: 20, left: 15, right: 15),
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 216, 216, 215),
                  borderRadius: BorderRadius.circular(15)),
              child: CartContainer(),
            );
          }),
    );
  }
}