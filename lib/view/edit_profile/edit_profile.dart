import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

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
          child: Column(
            children: [
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
                        Icons.edit,
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
              TextField(
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
              TextField(
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
              TextField(
                decoration: InputDecoration(
                  // hintText: "phone number",
                  prefix: Container(
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
                      initialSelection: 'IT',
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
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
