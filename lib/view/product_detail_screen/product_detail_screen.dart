import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int selectedNumber = 1;
  String selectedTimeUnit = 'days';
  int totalDays = 0;

  List<String> timeUnits = ['days', 'weeks', 'months'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
              color: ColorConstant.primaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "250 /day",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap: () {
                  //
                },
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
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: Image.network(
                      "https://imgs.search.brave.com/HuJoeQ1uKXlVmznxW6fCkXAaQTo-2oX8kujxQeTGkXw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/MDI5ODI3MjA3MDAt/YmZmZjk3ZjJlY2Fj/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4TVRSOGZH/TmhiV1Z5WVh4bGJu/d3dmSHd3Zkh4OE1B/PT0",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 15,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                        radius: 20,
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: ColorConstant.primaryColor,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    top: 15,
                    child: GestureDetector(
                      onTap: () {
                        //
                      },
                      child: CircleAvatar(
                        radius: 20,
                        child: Center(
                          child: Icon(
                            Icons.shopping_cart,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: ColorConstant.primaryColor,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 80,
                    top: 15,
                    child: GestureDetector(
                      onTap: () {
                        //
                      },
                      child: CircleAvatar(
                        radius: 20,
                        child: Icon(
                          Icons.favorite_border,
                          size: 20,
                          color: Colors.white,
                        ),
                        backgroundColor: ColorConstant.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Washing machine",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 23,
                            color: Colors.amber,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  "Washing machines are appliances that help you clean your clothes and other fabrics. There are different types and features of washing machines that you can choose from depending on your needs and preferences.",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.justify,
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
                  "place",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Container(
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/icons/chat.png")),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/icons/calll.png")),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.1,
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Gallery",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: Center(
                        child: Text(
                      "+1",
                      style: TextStyle(fontSize: 20),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "How long do you want to rent this for?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                          child: Text(
                        "$totalDays Days",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstant.primaryColor,
                    ),
                    child: Center(
                      child: DropdownButton<int>(
                        borderRadius: BorderRadius.circular(15),
                        dropdownColor: Colors.black,
                        underline: Text(""),
                        iconEnabledColor: Colors.white,
                        iconSize: 28,
                        value: selectedNumber,
                        onChanged: (value) {
                          setState(() {
                            selectedNumber = value!;
                            totalDays = calculateTotalDays(
                                selectedNumber, selectedTimeUnit);
                            print('Total days: $totalDays');
                          });
                        },
                        items: List.generate(10, (index) {
                          return DropdownMenuItem<int>(
                            value: index + 1,
                            child: Text(
                              (index + 1).toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 130,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstant.primaryColor,
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        borderRadius: BorderRadius.circular(15),
                        dropdownColor: Colors.black,
                        style: TextStyle(color: Colors.amber),
                        underline: Text(""),
                        iconEnabledColor: Colors.white,
                        iconSize: 28,
                        value: selectedTimeUnit,
                        onChanged: (value) {
                          setState(() {
                            selectedTimeUnit = value!;
                            totalDays = calculateTotalDays(
                                selectedNumber, selectedTimeUnit);
                            print('Total days: $totalDays');
                          });
                        },
                        items: timeUnits.map((unit) {
                          return DropdownMenuItem<String>(
                            value: unit,
                            child: Text(
                              unit,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                height: 190,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  int calculateTotalDays(int number, String timeUnit) {
    switch (timeUnit) {
      case 'hours':
        return number * 24; // Assuming 1 day = 24 hours
      case 'days':
        return number;
      case 'weeks':
        return number * 7; // Assuming 1 week = 7 days
      case 'months':
        return number * 30; // Assuming 1 month = 30 days
      default:
        return 0;
    }
  }
}
