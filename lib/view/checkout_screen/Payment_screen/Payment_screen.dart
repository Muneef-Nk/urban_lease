import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Container(
              height: 200,
              width: 350,
              child: Lottie.asset("assets/animations/payment.json",
                  fit: BoxFit.fill)),
        ),
        Center(
            child: Text(
          "Payment Successfull",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent),
        )),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "View Order",
                style: TextStyle(color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ColorConstant.primaryColor),
          ),
        )
      ]),
    );
  }
}
