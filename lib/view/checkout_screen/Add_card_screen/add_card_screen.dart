import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';

import 'package:rent_cruise/view/checkout_screen/payment_methods_screen/payment_methods_screen.dart';

class AddCardScreen extends StatefulWidget {
  @override
  _AddCardScreenState createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expiryDateController = TextEditingController();
  TextEditingController cardHolderNameController = TextEditingController();
  TextEditingController cvvCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back),
        ),
        elevation: 0,
        title: Text(
          "Add Card",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorConstant.primaryColor),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://wallpaperaccess.com/full/1742495.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    bottom: 78,
                    child: Text(
                      "12345676887978",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Card Holder:",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                'Your Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ]),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Expire Date:",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                '02/28',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ]),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      height: 65,
                      width: 65,
                      child: Image.network(
                        "https://cdn2.iconfinder.com/data/icons/payment-2-filled/64/payment-11-512.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 20,
                    child: Text(
                      "VISA",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _buildTextField(
              controller: cardHolderNameController,
              labelText: 'Card Holder',
              miniTitle: 'Your Name',
            ),
            SizedBox(height: 16.0),
            _buildTextField(
              controller: cardNumberController,
              labelText: 'Card Number',
              hintText: 'XXXX XXXX XXXX XXXX',
              miniTitle: 'Card Number',
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: _buildTextField(
                    controller: expiryDateController,
                    labelText: 'Expiry Date',
                    hintText: 'MM/YY',
                    miniTitle: 'Expiry Date',
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: _buildTextField(
                    controller: cvvCodeController,
                    labelText: 'CVV',
                    hintText: 'XXX',
                    miniTitle: 'CVV',
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: ColorConstant.primaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: Text(
                "Add Card",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required String miniTitle,
    String hintText = '',
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          miniTitle,
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        SizedBox(height: 8.0),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey), // Add border
            borderRadius: BorderRadius.circular(
                8.0), // Optional: Add border radius for rounded corners
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: labelText,
              hintText: hintText,
              border: InputBorder.none, // Remove default border of TextField
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.0), // Adjust padding
            ),
          ),
        ),
      ],
    );
  }
}
