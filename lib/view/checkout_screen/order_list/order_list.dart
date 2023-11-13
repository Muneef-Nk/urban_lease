import 'package:flutter/material.dart';

class order_list extends StatefulWidget {
  const order_list({super.key});

  @override
  State<order_list> createState() => _order_listState();
}

class _order_listState extends State<order_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(children: [
          Container(
            height: 70,
            width: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://www.affordablescales.com/images/big/GBK_16A.jpg",
                  fit: BoxFit.contain,
                )),
          )
        ]),
      ),
    );
  }
}