import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_cruise/controller/card_screeen/card_screen_controller.dart';
import 'package:rent_cruise/controller/checkout_controller/checkout_controller.dart';
import 'package:rent_cruise/controller/product_details_provider/details_screen_controller.dart';
import 'package:rent_cruise/model/checkout_card_model/checkout_card_model.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/checkout_screen/checkout_screen.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailsScreen extends StatelessWidget {
  final int index;
  final List dataList;
  ProductDetailsScreen({Key? key, required this.index, required this.dataList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final checkoutController = Provider.of<CheckoutController>(context);
    final cardController = Provider.of<CardScreenController>(context);
    final detailController = Provider.of<ProductDetailsController>(context);

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 65,
          decoration: BoxDecoration(
              color: ColorConstant.primaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${dataList[index].price} / day',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              InkWell(
                onTap: () {
                  // totalPriceCalc(widget.index);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Checkout_screen()));
                  Provider.of<CheckoutController>(context, listen: false)
                      .checkAmmount(detailController.totalPrice!);
                  if (checkoutController.checkoutList
                      .any((e) => e.id == index)) {
                    print('already exist');
                    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //     backgroundColor: Colors.orange,
                    //     content:
                    //         Text("this item already selected for checkout")));
                  } else {
                    Provider.of<CheckoutController>(context, listen: false)
                        .addProduct(CheckoutCartModel(
                      id: index,
                      img: dataList[index].img,
                      name: dataList[index].name,
                      totalPrice: detailController.totalPrice.toString(),
                      selectedDays: detailController.totalDays.toString(),
                      perdayprice: dataList[index].price.toString(),
                    ));
                  }
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
                      dataList[index].img,
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
                        detailController.totalPriceCalc(index);

                        Provider.of<CardScreenController>(context,
                                listen: false)
                            .addProductToCart(index,
                                totalPrice:
                                    detailController.totalPrice.toString(),
                                selectedDays:
                                    detailController.totalDays.toString(),
                                price: dataList[index].price.toString());

                        Provider.of<CardScreenController>(context,
                                    listen: false)
                                .exist
                            ? showTopSnackBar(
                                animationDuration: Duration(seconds: 1),
                                displayDuration: Duration(milliseconds: 2),
                                Overlay.of(context),
                                CustomSnackBar.info(
                                  message: "this item already have cart",
                                ),
                              )
                            : showTopSnackBar(
                                animationDuration: Duration(seconds: 1),
                                displayDuration: Duration(milliseconds: 2),
                                Overlay.of(context),
                                CustomSnackBar.success(
                                  message: "this item added your cart",
                                ),
                              );

                        Provider.of<CardScreenController>(context,
                                    listen: false)
                                .exist
                            ? 0
                            : Provider.of<CardScreenController>(context,
                                    listen: false)
                                .calculateAllProductPrice();
                      },
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            child: Center(
                              child: Icon(Icons.shopping_cart,
                                  size: 20, color: Colors.white),
                            ),
                            backgroundColor: ColorConstant.primaryColor,
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                  color: Colors.red, shape: BoxShape.circle),
                              child: Center(
                                  child: Text(
                                cardController.cardlist.length.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          )
                        ],
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
                      GestureDetector(
                        onTap: () {
                          Uri(
                            scheme: 'sms',
                            path: '+916238747202',
                            queryParameters: <String, String>{
                              'body': Uri.encodeComponent(
                                  'Example Subject & Symbols are allowed!'),
                            },
                          );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/icons/chat.png")),
                        ),
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
                            onPressed: () {
                              final url = Uri.parse('tel:+916238747202');
                              print(url);
                              launchUrl(url);
                            },
                            icon: Icon(
                              Icons.call,
                              color: Colors.blue,
                            )),
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
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      child: Image.network(
                        dataList[index].gallery[0],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      child: Image.network(
                        dataList[index].gallery[1],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      child: Image.network(
                        dataList[index].gallery[2],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(dataList[index].gallery[3])),
                        color: Colors.grey),
                    child: Center(
                        child: Text(
                      "+1",
                      style: TextStyle(fontSize: 20, color: Colors.white),
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
                        "${detailController.totalDays} Days",
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
                        value: detailController.selectedNumber,
                        onChanged: (value) {
                          detailController.selectedNumber = value!;
                          detailController.totalDays =
                              Provider.of<ProductDetailsController>(context,
                                      listen: false)
                                  .calculateTotalDays();
                          detailController.totalPriceCalc(index);
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
                        value: detailController.selectedTimeUnit,
                        onChanged: (value) {
                          detailController.selectedTimeUnit = value!;
                          detailController.totalDays =
                              Provider.of<ProductDetailsController>(context,
                                      listen: false)
                                  .calculateTotalDays();
                          detailController.totalPriceCalc(index);
                        },
                        items: detailController.timeUnits.map((unit) {
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
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  "Total Price: ₹${detailController.totalPrice ?? 0}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 5),
                child: Text(
                  "Location",
                  style: TextStyle(fontSize: 18),
                ),
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
}
