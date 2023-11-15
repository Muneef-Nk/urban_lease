import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/checkout_screen/choose_shipping/choose_shipping.dart';

import 'package:rent_cruise/view/checkout_screen/payment_methods_screen/payment_methods_screen.dart';
import 'package:rent_cruise/view/checkout_screen/shipping_address_screen/shipping_address_screen.dart';

class checkout_screen extends StatefulWidget {
  const checkout_screen({super.key});

  @override
  State<checkout_screen> createState() => _checkout_screenState();
}

class _checkout_screenState extends State<checkout_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Check Out",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: ColorConstant.primaryColor,
        child: InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaymentMethods(),
              )),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Center(
                child: Text(
                  "Continue To Payment",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Shipping Address",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    " vedant road,Mumbai, Metropolitan ,Thane Maharashtra, 400615",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              trailing: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShippingAddress(),
                    )),
                child: Text(
                  " Change",
                  style: TextStyle(
                      color: Colors.brown, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Choose Shipping Type",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.lock_clock_outlined),
              title: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  "Economy",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    " Estimated Arrival 25 Aug 2023",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              trailing: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChooseShipping(),
                    )),
                child: Text(
                  " Change",
                  style: TextStyle(
                      color: Colors.brown, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Order List",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 400,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
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
                      SizedBox(
                        width: 25,
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
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
