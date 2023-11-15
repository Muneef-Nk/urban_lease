import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_cruise/controller/login_controller/login_controller.dart';
import 'package:rent_cruise/utils/color_constant.dart/color_constant.dart';
import 'package:rent_cruise/view/forgot_password_screen/forgot_password_screen.dart';
import 'package:rent_cruise/view/login_screen/widgets/login_bottom.dart';
import 'package:rent_cruise/view/login_screen/widgets/social_container.dart';
import 'package:rent_cruise/view/verify_code/verify_code.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var LoginProvider = Provider.of<LoginScreenController>(context);
    var loginProviderFun =
        Provider.of<LoginScreenController>(context, listen: false);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90,
                ),
                Column(
                  children: [
                    Text(
                      LoginProvider.isLogin ? "Sign In" : "Sign Up",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        LoginProvider.isLogin
                            ? "Hi! welcome back you have been missed"
                            : "Fill your information below or register\n              with your social account",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7, bottom: 6),
                      child: Text(
                        'Email',
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
                        'Password',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
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
                  height: 10,
                ),
                LoginProvider.isLogin
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      ForgotPasswordScreen()));
                            },
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                  color: ColorConstant.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                              fillColor: MaterialStateProperty.all(
                                  ColorConstant.primaryColor),
                              value: true,
                              onChanged: (v) {}),
                          Text("Agree with "),
                          Text(
                            "Terms & Condition?",
                            style: TextStyle(
                                color: ColorConstant.primaryColor,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                SizedBox(
                  height: 25,
                ),
                LoginProvider.isLogin
                    ? SignBotton(
                        lebal: "Sign In",
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => VerifyCode()));
                        },
                      )
                    : SignBotton(
                        lebal: "Sign Up",
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => VerifyCode()));
                        }),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    LoginProvider.isLogin
                        ? Text('Or sign in with ')
                        : Text('Or sign Up in with '),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
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
                    Text(LoginProvider.isLogin
                        ? "Dont't have an accont?"
                        : "Already have an account?"),
                    TextButton(
                        onPressed: () {
                          loginProviderFun.changeLogin();
                        },
                        child: Text(
                          LoginProvider.isLogin ? "Sign Up" : "Login In",
                          style: TextStyle(
                              color: ColorConstant.primaryColor,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
