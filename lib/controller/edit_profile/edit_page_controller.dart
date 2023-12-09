import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditPageController with ChangeNotifier {
  CollectionReference users = FirebaseFirestore.instance.collection('profile');

  addUserProfile(
      {required String name,
      required String email,
      required String number,
      required String address}) {
    return users
        .doc('a2kgWd9q0SyHYaBiix8j')
        .set({
          "name": name,
          "email": email,
          "mobile_number": number,
          "address": address,
        })
        .then((value) => print("user added"))
        .catchError((Error) => print("failed to adde user: $Error"));
  }
}
