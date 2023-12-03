import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:provider/provider.dart';
import 'package:rent_cruise/controller/card_screeen/card_screen_controller.dart';
import 'package:rent_cruise/model/products_model.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/product_detail_screen/product_detail_screen.dart';

class CartContainer extends StatelessWidget {
  final int index;

  const CartContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CardScreenController>(context);
    print('Index: $index, cardlist length: ${provider.cardlist.length}');

    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetailsScreen(
                      index: index,
                      dataList: [],
                    )));
          },
          child: Container(
            margin: EdgeInsets.all(8),
            width: 130,
            height: 130,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 207, 207, 205),
                borderRadius: BorderRadius.circular(15)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                provider.cardlist[index].img,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      provider.cardlist[index].name,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                        onTap: () {
                          //  showBottomSheet(context);
                          PanaraConfirmDialog.show(
                            context,
                            imagePath: "assets/images/warning.png",
                            title: "Hello",
                            message:
                                "Are you sure back to homescreen if confirm all product remove",
                            confirmButtonText: "Confirm",
                            cancelButtonText: "Cancel",
                            onTapCancel: () {
                              Navigator.pop(context);
                            },
                            onTapConfirm: () {
                              Provider.of<CardScreenController>(context,
                                      listen: false)
                                  .calculateAfterDeletedProductPrice(
                                      double.parse(
                                          provider.cardlist[index].totalPrice));
                              Provider.of<CardScreenController>(context,
                                      listen: false)
                                  .deleteProduct(index);

                              Navigator.pop(context);
                            },
                            panaraDialogType: PanaraDialogType.error,
                            barrierDismissible:
                                false, // optional parameter (default is true)
                          );
                        },
                        child: Icon(Icons.delete))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${provider.cardlist[index].perdayprice}/day',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  dataList[index].desc,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 3,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          '${provider.cardlist[index].selectedDays} days',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "₹${provider.cardlist[index].totalPrice}",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<dynamic> showBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Remove from cart?",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 207, 207, 205),
                        borderRadius: BorderRadius.circular(15)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      // child: Image.network(
                      //   provider.card[index].image,
                      //   // product[index].image,
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Provider.of<CardScreenController>(context)
                                .cardlist[index]
                                .name,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${Provider.of<CardScreenController>(context).cardlist[index].perdayprice}/day',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'you selected ${Provider.of<CardScreenController>(context).cardlist[index].selectedDays}',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "Cancel",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Provider.of<CardScreenController>(context, listen: false)
                          .deleteProduct(index);
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "Yes, remove",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  )
                ],
              )
            ]),
          );
        });
  }
}
