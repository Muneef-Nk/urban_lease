import 'package:flutter/material.dart';

class ProfileScreenController with ChangeNotifier {
  int bookings = 0;

  changeBookingNumber() {
    bookings++;
    notifyListeners();
  }
}
