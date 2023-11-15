import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Payement Method",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, bottom: 10),
            child: Text(
              "Credit & Debit Card",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 235, 233, 233)),
                  borderRadius: BorderRadius.circular(5)),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * .1,
              child: ListTile(
                leading: Icon(
                  Icons.payment,
                  color: Colors.brown,
                ),
                title: Text("Add New Card"),
                trailing: InkWell(
                  onTap: () {},
                  child: Text(
                    "Link",
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, bottom: 10),
            child: Text(
              "Credit & Debit Card",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 235, 233, 233)),
                  borderRadius: BorderRadius.circular(5)),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * .1,
              child: ListTile(
                leading: Icon(
                  Icons.paypal,
                  color: Colors.blue,
                ),
                title: Text("Add Paypal"),
                trailing: InkWell(
                    onTap: () {},
                    child: Text("Link", style: TextStyle(color: Colors.brown))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 235, 233, 233)),
                  borderRadius: BorderRadius.circular(5)),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * .1,
              child: ListTile(
                leading: Icon(
                  Icons.apple,
                  color: Colors.black,
                ),
                title: Text("Add Apple Card"),
                trailing: InkWell(
                    onTap: () {},
                    child: Text("Link", style: TextStyle(color: Colors.brown))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
