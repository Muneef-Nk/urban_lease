import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/checkout_screen/checkout_screen.dart';
import 'package:rent_cruise/view/checkout_screen/payment_methods_screen/payment_methods_screen.dart';

class ChooseShipping extends StatefulWidget {
  const ChooseShipping({super.key});

  @override
  State<ChooseShipping> createState() => _ChooseShippingState();
}

class _ChooseShippingState extends State<ChooseShipping> {
  List shipping = ["Economy", "Regular", "Cargo", "Friend's House"];
  int selectedAddress = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => checkout_screen(),
                  ));
            },
            child: Icon(
              Icons.arrow_back,
              color: ColorConstant.primaryColor,
            )),
        title: Text(
          "Choose Shipping",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(5),
        height: 60,
        decoration: BoxDecoration(
            color: ColorConstant.primaryColor,
            borderRadius: BorderRadius.circular(15)),
        child: InkWell(
          onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => PaymentMethods(),
              )),
          child: Center(
            child: Text(
              "Continue To Payment",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: shipping.length,
        itemBuilder: (context, index) => Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.lock_clock_outlined,
                color: ColorConstant.primaryColor,
              ),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    shipping[index],
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
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
              trailing: Radio(
                value: index,
                groupValue: selectedAddress,
                onChanged: (value) {
                  setState(() {
                    selectedAddress = value as int;
                  });
                },
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
