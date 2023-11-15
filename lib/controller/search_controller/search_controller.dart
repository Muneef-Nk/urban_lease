import 'package:flutter/material.dart';
import 'package:rent_cruise/model/search_screen.dart/search_item_model.dart';

class SearchController with ChangeNotifier {
  List<SearchItemModel> searchList = [];

  addSearchData(SearchItemModel searchData) {
    searchList.add(searchData);
    notifyListeners();
  }
}
