import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/checkout_screen/checkout_screen.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  int selectedAddress = -1; // Initialize with an invalid index

  List<String> addresses = [
    "Home",
    "Office",
    "Parent's House",
    "Friend's House"
  ];

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
          "Shipping Address",
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
          onTap: () {
            Navigator.of(context).pop();

            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.green,
                closeIconColor: Colors.white,
                showCloseIcon: true,
                elevation: 0,
                margin: EdgeInsets.all(10),
                content: Text("Shipping Address changed")));
          },
          child: Center(
            child: Text(
              "Apply",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: addresses.length,
        itemBuilder: (context, index) => Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.location_on_outlined,
                color: ColorConstant.primaryColor,
              ),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    addresses[index],
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
                    "Vedant road,Mumbai, Metropolitan ,Thane Maharashtra, 400615",
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
