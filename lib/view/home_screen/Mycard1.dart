import 'package:flutter/material.dart';
import 'package:rent_cruise/view/product_detail_screen/product_detail_screen.dart';

class Mycard1 extends StatefulWidget {
  const Mycard1({super.key});

  @override
  State<Mycard1> createState() => _Mycard1State();
}

class _Mycard1State extends State<Mycard1> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  child: Image.network(
                      "https://i1.adis.ws/i/canon/eos-r5_front_rf24-105mmf4lisusm_32c26ad194234d42b3cd9e582a21c99b"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : null,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "ITEM NAME",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ITEM PRICE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: const Color.fromARGB(255, 238, 218, 33),
                    ),
                    Text(
                      "4.5", // Replace with your actual rating logic
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],

     Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetailsScreen(
                    itemIndex: 1,
                  )));
        },
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

      ),
    );
  }
}
