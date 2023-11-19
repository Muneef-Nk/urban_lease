import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';

class ProductDetailsScreen extends StatefulWidget {
  final int itemIndex;

  const ProductDetailsScreen({Key? key, required this.itemIndex})
      : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int selectedNumber = 1;
  String selectedDurationUnit = 'day';

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
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
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
                  borderRadius: BorderRadius.circular(10),
                ),
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
                        color: Colors.amber,
                      ),
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
                      ),
                    ),
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
                      ),
                    ),
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
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                "Washing machines are appliances that help you clean your clothes and other fabrics. There are different types and features of washing machines that you can choose from depending on your needs and preferences.",
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.1,
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/564x/9d/db/5c/9ddb5c50fc1b25019921343128339ea3.jpg")),
              title: Text(
                "Luffy",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text(
                "Owner",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat_sharp,
                    color: ColorConstant.primaryColor,
                    size: 24,
                  )),
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.1,
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Rent Duration:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<int>(
                    value: selectedNumber,
                    onChanged: (int? value) {
                      setState(() {
                        selectedNumber = value ?? 1;
                      });
                    },
                    items: List.generate(31, (index) {
                      return DropdownMenuItem<int>(
                        value: index + 1,
                        child: Text((index + 1).toString()),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                    value: selectedDurationUnit,
                    onChanged: (String? value) {
                      setState(() {
                        selectedDurationUnit = value ?? 'day';
                      });
                    },
                    items: ['day', 'month', 'week'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
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
