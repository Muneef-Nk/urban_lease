import 'package:flutter/material.dart';

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
        title: Text(
          "Choose Shipping",
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
              width: MediaQuery.of(context).size.width * 0.9,
              child: Center(
                child: Text(
                  "Apply",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: shipping.length,
        itemBuilder: (context, index) => Column(
          children: [
            ListTile(
              leading: Icon(Icons.lock_clock_outlined),
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
