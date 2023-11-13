import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rent_cruise/view/Profile/helpCenter.dart';
import 'package:rent_cruise/view/Profile/payement_method.dart';
import 'package:rent_cruise/view/Profile/privacy.dart';
import 'package:rent_cruise/view/Profile/settings.dart';
import 'package:rent_cruise/view/Profile/yourProfile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  XFile? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            "Profile",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        width: MediaQuery.sizeOf(context).width * 0.3,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: selectedImage != null
                                ? FileImage(File(selectedImage!.path))
                                    as ImageProvider<Object>
                                : AssetImage("assets/images/profile.jpeg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 10,
                        child: CircleAvatar(
                          backgroundColor: Colors.brown,
                          radius: 20,
                          child: InkWell(
                            onTap: () {
                              pickImageFromGallery();
                            },
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "USER NAME",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: MediaQuery.sizeOf(context).height * .6,
              child: ListView(children: [
                Divider(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YourProfile(),
                      ),
                    );
                  },
                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward),
                    title: Text("Your Profile"),
                    leading: Icon(Icons.person),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentMethod(),
                        ));
                  },
                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward),
                    title: Text("Payment Method"),
                    leading: Icon(Icons.payment),
                  ),
                ),
                Divider(),
                ListTile(
                  trailing: Icon(Icons.arrow_forward),
                  title: Text("My Orders"),
                  leading: Icon(Icons.tab),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Settings(),
                        ));
                  },
                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward),
                    title: Text("Settings"),
                    leading: Icon(Icons.settings),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HelpCenter(),
                        ));
                  },
                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward),
                    title: Text("Help Center"),
                    leading: Icon(Icons.help),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PrivacyPolicy(),
                        ));
                  },
                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward),
                    title: Text("Privacy Policy"),
                    leading: Icon(Icons.lock),
                  ),
                ),
                Divider(),
                ListTile(
                  trailing: Icon(Icons.arrow_forward),
                  title: Text("Invites Friends"),
                  leading: Icon(Icons.share),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward),
                    title: Text("Log Out"),
                    leading: Icon(Icons.logout),
                  ),
                ),
                Divider(),
              ]),
            ),
          )
        ],
      ),
    );
  }

  Future<void> pickImageFromGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        selectedImage = XFile(pickedImage.path);
      });
    }
  }
}
