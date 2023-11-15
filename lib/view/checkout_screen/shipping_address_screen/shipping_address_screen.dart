import 'package:flutter/material.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  List address = ["Home", "Office", "Parent's House", "Friend's House"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shipping Address",
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
        itemCount: address.length,
        itemBuilder: (context, index) => Column(
          children: [
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    address[index],
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
                    " vedant road,Mumbai, Metropolitan ,Thane Maharashtra, 400615",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              trailing: Radio(
                  value: 1,
                  groupValue: index,
                  onChanged: (value) {
                    setState(() {
                      value = index;
                    });
                  }),
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
