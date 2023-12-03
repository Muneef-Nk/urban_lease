import 'package:flutter/material.dart';
import 'package:rent_cruise/model/products_model.dart';

class ProductDetailsController with ChangeNotifier {
  int selectedNumber = 1;
  String selectedTimeUnit = 'days';

  int totalDays = 1;

  List<String> timeUnits = ['days', 'weeks', 'months'];
  double? totalPrice;

  totalPriceCalc(int index) {
    totalPrice = totalDays * dataList[index].price.toDouble();
    notifyListeners();
  }

  timeUnitChange(String value) {
    selectedTimeUnit = value;
    notifyListeners();
  }

  int calculateTotalDays() {
    switch (selectedTimeUnit) {
      case 'days':
        return selectedNumber * 1;
      case 'weeks':
        return selectedNumber * 7; // Assuming 1 week = 7 days
      case 'months':
        return selectedNumber * 30; // Assuming 1 month = 30 days
      default:
        return 0;
    }
  }
}
