import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rent_cruise/model/checkout_card_model/checkout_card_model.dart';
import 'package:rent_cruise/model/products_model.dart';

class CardScreenController with ChangeNotifier {
  List<CheckoutCartModel> cardlist = [];
  bool exist = false;
  double sum = 0;
  List result = [];

  final _cartController = StreamController<List<CheckoutCartModel>>.broadcast();

  Stream<List<CheckoutCartModel>> get cartStream => _cartController.stream;

  void dispose() {
    super.dispose();

    _cartController.close();
  }

// if product already have list product not saved if no product added to the list
  addProductToCart(int index,
      {required String totalPrice,
      required String selectedDays,
      required String price}) {
    exist = cardlist.any((element) => element.id == index);
    if (exist) {
      // cardlist.removeAt(index);
      // notifyListeners();
    } else {
      cardlist.add(CheckoutCartModel(
          id: index,
          img: dataList[index].img,
          name: dataList[index].name,
          totalPrice: totalPrice,
          selectedDays: selectedDays,
          perdayprice: price));
      notifyListeners();
    }
    notifyListeners();
  }

//delete product from the cart list
  deleteProduct(int index) {
    cardlist.removeAt(index);
    notifyListeners();
  }

  calculateAllProductPrice() {
    cardlist.forEach(
      (element) {
        sum += double.parse(element.totalPrice);
        notifyListeners();
      },
    );
    notifyListeners();
  }

  calculateAfterDeletedProductPrice(double price) {
    sum = sum - price;

    notifyListeners();
  }
}
