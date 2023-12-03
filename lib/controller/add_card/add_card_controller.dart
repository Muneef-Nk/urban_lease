import 'package:flutter/widgets.dart';
import 'package:rent_cruise/model/addCard/cardModel.dart';

class AddCardController with ChangeNotifier {
  List<CardModel> cardList = [];

  addCard(CardModel cardModel) {
    cardList.add(cardModel);
    print(cardList);
    notifyListeners();
  }

  bool isLoading = false;

  List banksName = [
    "Bank of Baroda",
    "Bank of India",
    "Canara Bank",
    "Indian Bank",
    "State Bank of India",
    "UCO Bank",
    "Union Bank of India",
    "south indian bank"
  ];

  String selectedBankName = '';
}
