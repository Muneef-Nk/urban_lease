import 'package:flutter/material.dart';

class Mycard1 extends StatefulWidget {
  const Mycard1({super.key});

  @override
  State<Mycard1> createState() => _Mycard1State();
}

class _Mycard1State extends State<Mycard1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                // decoration: BoxDecoration(
                //   color: Colors.brown,
                // ),
                child: Center(
                  child: Image.network(
                      "https://i.pinimg.com/564x/1c/45/95/1c4595c91503c3bd6ac4dfa75bbb8068.jpg"),
                ),
              ),
              Row(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite, color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "ITEM NAME",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: const Color.fromARGB(255, 238, 218, 33),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "ITEM PRICE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
