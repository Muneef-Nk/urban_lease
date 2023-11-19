import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/checkout_screen/Add_card_screen/add_card_screen.dart';
import 'package:rent_cruise/view/checkout_screen/Payment_screen/Payment_screen.dart';
import 'package:rent_cruise/view/checkout_screen/checkout_screen.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  int _selectedPaymentOption = 1; // Initialize with the default value

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
          "Payment Methods",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: ColorConstant.primaryColor, // Change to your desired color
        child: InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Payment(),
                ));
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Center(
                child: Text(
                  "Confirm Payment",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: InkWell(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddCardScreen(),
                      )),
                  child: ListTile(
                    leading: Container(
                      height: 40,
                      width: 50,
                      child: Image.network(
                        "https://clipartcraft.com/images/credit-card-logo-atm-6.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    title: Text(
                      "Add Card",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              "More Payment Options",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    height: 40,
                    width: 50,
                    child: Image.network(
                      "https://www.pngall.com/wp-content/uploads/5/PayPal-Logo-PNG-Free-Image.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "Paypal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Radio(
                    value: 1,
                    groupValue: _selectedPaymentOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedPaymentOption = value as int;
                      });
                    },
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Container(
                    height: 31,
                    width: 31,
                    child: Image.network(
                      "http://www.clipartbest.com/cliparts/7Ta/o4A/7Tao4Axqc.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Text(
                    "Apple Pay",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Radio(
                    value: 2,
                    groupValue: _selectedPaymentOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedPaymentOption = value as int;
                      });
                    },
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Container(
                    height: 30,
                    width: 30,
                    child: Image.network(
                      "https://cdn.icon-icons.com/icons2/836/PNG/512/Google_icon-icons.com_66793.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Text(
                    "Google Pay",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Radio(
                    value: 3,
                    groupValue: _selectedPaymentOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedPaymentOption = value as int;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
