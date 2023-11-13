import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class YourProfile extends StatefulWidget {
  const YourProfile({super.key});

  @override
  State<YourProfile> createState() => _YourProfileState();
}

class _YourProfileState extends State<YourProfile> {
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
              "Your Profile",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
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
            Container(
              height: MediaQuery.sizeOf(context).height * .6,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.sizeOf(context).height * .25,
                              child: ListView(
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 8.0,
                                        right: 8.0,
                                        bottom: 10),
                                    child: Text(
                                      "Name",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15,
                                        left: 8.0,
                                        right: 8.0,
                                        top: 20),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.brown)),
                                      onPressed: () {},
                                      child: Text("Change"),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title:
                            Text("Name", style: TextStyle(color: Colors.brown)),
                        subtitle: Text(
                          "User name",
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.sizeOf(context).height * .25,
                              child: ListView(
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 8.0,
                                        right: 8.0,
                                        bottom: 10),
                                    child: Text(
                                      "Email",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15,
                                        left: 8.0,
                                        right: 8.0,
                                        top: 20),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.brown)),
                                      onPressed: () {},
                                      child: Text("Change"),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title: Text("Email Address",
                            style: TextStyle(color: Colors.brown)),
                        subtitle: Text(
                          "ashna@gmail.com",
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkResponse(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.sizeOf(context).height * .25,
                              child: ListView(
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 8.0,
                                        right: 8.0,
                                        bottom: 10),
                                    child: Text(
                                      "Mobile Number",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15,
                                        left: 8.0,
                                        right: 8.0,
                                        top: 20),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.brown)),
                                      onPressed: () {},
                                      child: Text("Change"),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title: Text("Mobile Number",
                            style: TextStyle(color: Colors.brown)),
                        subtitle: Text(
                          "8845372899",
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.sizeOf(context).height * .25,
                              child: ListView(
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 8.0,
                                        right: 8.0,
                                        bottom: 10),
                                    child: Text(
                                      "User Name",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15,
                                        left: 8.0,
                                        right: 8.0,
                                        top: 20),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.brown)),
                                      onPressed: () {},
                                      child: Text("Change"),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title: Text("User Name",
                            style: TextStyle(color: Colors.brown)),
                        subtitle: Text(
                          "Ashna Sathar",
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.sizeOf(context).height * .25,
                              child: ListView(
                                // physics: NeverScrollableScrollPhysics(),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 8.0,
                                        right: 8.0,
                                        bottom: 10),
                                    child: Text(
                                      "Bio",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15,
                                        left: 8.0,
                                        right: 8.0,
                                        top: 20),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.brown)),
                                      onPressed: () {},
                                      child: Text("Change"),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title:
                            Text("Bio", style: TextStyle(color: Colors.brown)),
                        subtitle: Text(
                          "Add few Words About Yourself",
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
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
