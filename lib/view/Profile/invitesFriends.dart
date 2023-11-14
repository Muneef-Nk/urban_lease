import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:share_plus/share_plus.dart';

class InvitesFriends extends StatefulWidget {
  const InvitesFriends({super.key});

  @override
  State<InvitesFriends> createState() => _InvitesFriendsState();
}

class _InvitesFriendsState extends State<InvitesFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Invites Friends",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
                height: MediaQuery.sizeOf(context).height * .4,
                child: Lottie.asset("assets/animations/inviteLottie.json")),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                ColorConstant.primaryColor,
              ),
            ),
            onPressed: () {},
            child: Text("Invite From Your Contacts"),
          ),
        ],
      ),
    );
  }
}
