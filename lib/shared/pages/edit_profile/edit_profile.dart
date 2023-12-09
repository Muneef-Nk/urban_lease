import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_cruise/controller/edit_profile/edit_page_controller.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class EditProfile extends StatefulWidget {
  final Function() onPressed;
  EditProfile({
    super.key,
    required this.onPressed,
  });

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  var newValue;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            margin: EdgeInsets.all(5),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade300)),
            child: Icon(
              Icons.arrow_back,
              color: ColorConstant.primaryColor,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Completed your profile",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Don't worry only you can see your personal \n      data. No one else will be able to see it.",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.grey[300],
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Container(
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstant.primaryColor,
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7, bottom: 6),
                      child: Text(
                        'Enter Name',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  autofocus: true,
                  controller: _nameController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "name",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7, bottom: 6),
                      child: Text(
                        'Enter Email',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7, bottom: 6),
                      child: Text(
                        'Phone number',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 50,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: Colors.grey.withOpacity(.5)),
                          borderRadius: BorderRadius.circular(10)),
                      child: CountryCodePicker(
                        searchDecoration: InputDecoration(
                          hintText: "Search Country name or code",
                          hintStyle: TextStyle(fontSize: 12),
                          border: InputBorder.none,
                          fillColor: Colors.grey[200],
                          filled: true,
                          // enabledBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(15)
                          // )
                        ),
                        showFlag: false,

                        onChanged: print,
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: 'IN',
                        favorite: ['+376', '+91'],
                        // optional. Shows only country name and flag
                        showCountryOnly: false,
                        // optional. Shows only country name and flag when popup is closed.
                        showOnlyCountryWhenClosed: false,
                        showDropDownButton: false,
                        // optional. aligns the flag and the Text left
                        // alignLeft: true,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 10) {
                            return 'Please enter valid number';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        controller: _phoneNumberController,
                        decoration: InputDecoration(
                          counterText: "",
                          hintText: "phone number",
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(30)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7, bottom: 6),
                      child: Text(
                        'Enter Address',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.done,
                  controller: _addressController,
                  decoration: InputDecoration(
                    hintText: "address",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      if (_emailController.text.contains("@gmail.com")) {
                        Provider.of<EditPageController>(context, listen: false)
                            .addUserProfile(
                                name: _nameController.text,
                                email: _emailController.text,
                                number: _phoneNumberController.text,
                                address: _addressController.text);

                        widget.onPressed();
                        showTopSnackBar(
                            animationDuration: Duration(seconds: 1),
                            displayDuration: Duration(milliseconds: 2),
                            Overlay.of(context),
                            CustomSnackBar.success(
                              message: "Profile Updated",
                            ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("gmail format not correct")));
                      }
                    }
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      "Done",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
