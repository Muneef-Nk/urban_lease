import 'package:flutter/material.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/login_screen/login_scrren.dart';
import 'package:rent_cruise/view/login_screen/widgets/social_container.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Hi! welcome back you have been missed",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "email",
                  border: InputBorder.none,
                  label: Text("email"),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "email",
                  border: InputBorder.none,
                  label: Text("email"),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (e) {}),
                  Text("Agree with tems and contitin")
                ],
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: ColorConstant.primaryColor,
                ),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Text(' Or sign in with '),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialContainer(
                    image: "assets/icons/apple.png",
                  ),
                  SocialContainer(
                    image: "assets/icons/fb.png",
                  ),
                  SocialContainer(
                    image: "assets/icons/goo.png",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Alredy have an accont?"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: ColorConstant.primaryColor),
                      ))
                ],
              )
            ]),
      ),
    );
  }
}
