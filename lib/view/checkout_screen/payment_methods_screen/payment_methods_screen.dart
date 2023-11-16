import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Methods",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: ColorConstant.primaryColor,
        child: InkWell(
          onTap: () {},
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
                child: ListTile(
                  leading: Container(
                      height: 40,
                      width: 50,
                      child: Image.network(
                        "https://clipartcraft.com/images/credit-card-logo-atm-6.png",
                        fit: BoxFit.fill,
                      )),
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
          Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Positioned(
                  left: 15,
                  child: Text(
                    "More Payment Options",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ))),
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
                      )),
                  title: Text(
                    "Paypal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {
                        setState(() {
                          value = 1;
                        });
                      }),
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
                      )),
                  title: Text(
                    "Apple Pay",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Radio(
                      value: 2,
                      groupValue: 2,
                      onChanged: (value) {
                        setState(() {
                          value = 2;
                        });
                      }),
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
                      )),
                  title: Text(
                    "Google Pay",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Radio(
                      value: 3,
                      groupValue: 3,
                      onChanged: (value) {
                        setState(() {
                          value = 3;
                        });
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
