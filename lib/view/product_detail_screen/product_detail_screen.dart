import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  final int itemIndex;
  const ProductDetailsScreen({super.key, required this.itemIndex});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  TextEditingController startdatecontroller = TextEditingController();
  TextEditingController enddatecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.brown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "2000 Rs./day",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 40,
                width: 120,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Rent Now",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "https://i.pinimg.com/564x/76/5d/89/765d89a14f6b6cb4b0eefdcf9e8c2766.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 15,
                  child: CircleAvatar(
                    radius: 20,
                    child: Center(
                        child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                    backgroundColor: Colors.brown,
                  ),
                ),
                Positioned(
                  right: 30,
                  top: 15,
                  child: CircleAvatar(
                    radius: 20,
                    child: Center(
                        child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )),
                    backgroundColor: Colors.brown,
                  ),
                ),
                Positioned(
                  right: 80,
                  top: 15,
                  child: CircleAvatar(
                    radius: 20,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.brown,
                  ),
                ),
                
                Positioned(
                  bottom: 15,
                  right: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                "Washing machine",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                  "Washing machines are appliances that help you clean your clothes and other fabrics. There are different types and features of washing machines that you can choose from depending on your needs and preferences."),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Start date:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: startdatecontroller,
                decoration: InputDecoration(
                  hintText: "Start Date",
                  suffixIcon: IconButton(
                    onPressed: () async {
                      final DateTime? _date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2070));
                      setState(() {
                        startdatecontroller.text = _date.toString();
                      });
                    },
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.brown,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "End date:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: enddatecontroller,
                decoration: InputDecoration(
                  hintText: "end Date",
                  suffixIcon: IconButton(
                    onPressed: () async {
                      final DateTime? _date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2070));
                      setState(() {
                        enddatecontroller.text = _date.toString();
                      });
                    },
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.brown,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
