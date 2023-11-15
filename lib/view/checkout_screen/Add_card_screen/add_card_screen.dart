import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 153, 91, 68)),
              child: Column(
                children: [
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
            ElevatedButton(
              onPressed: () {
                // Perform actions when the user taps the "Add Card" button
                // You can save the card details to the server or perform any other necessary tasks
                // For now, let's print the card details
                print('Card Holder Name: ${cardHolderNameController.text}');
                print('Card Number: ${cardNumberController.text}');
                print('Expiry Date: ${expiryDateController.text}');
                print('CVV Code: ${cvvCodeController.text}');

                // You might want to navigate back or perform other actions here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.brown, // Set the button color to brown
              ),
              child: Text('Add Card'),
            ),
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
