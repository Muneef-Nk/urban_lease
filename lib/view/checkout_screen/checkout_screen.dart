import 'package:flutter/material.dart';
import 'package:rent_cruise/view/checkout_screen/order_list/order_list.dart';

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
        color: Colors.brown,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
             
              width:MediaQuery.of(context).size.width*0.9,
              child: Center(
                child: Text(
                  "Continue To Payment",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListTile(
                  title: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text(
                          "Home",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            " vedant road,Mumbai, Metropolitan ,Thane Maharashtra, 400615",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Text(
                          " Change",
                          style: TextStyle(
                              color: Colors.brown, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListTile(
                  title: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      children: [
                        Icon(Icons.lock_clock_outlined),
                        Text(
                          "Economy",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            " Estimated Arrival 25 Aug 2023",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Text(
                          " Change",
                          style: TextStyle(
                              color: Colors.brown, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
            Container(height: 100,
            width: MediaQuery.of(context).size.width * 0.9,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return order_list();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
