import 'package:flutter/material.dart';

class PasswordManager extends StatefulWidget {
  const PasswordManager({Key? key}) : super(key: key);

  @override
  State<PasswordManager> createState() => _PasswordManagerState();
}

class _PasswordManagerState extends State<PasswordManager> {
  bool currentPasswordVisible = false;
  bool newPasswordVisible = false;
  bool reEnterNewPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    currentPasswordVisible = false;
    newPasswordVisible = false;
    reEnterNewPasswordVisible = false;
  }

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
            "Password Manager",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildPasswordField("Current Password", currentPasswordVisible),
          Row(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                        color: Colors.brown,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],
          ),
          buildPasswordField("New Password", newPasswordVisible),
          buildPasswordField(
              "Re-Enter New Password", reEnterNewPasswordVisible),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 25.0, right: 25.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * .07,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.brown, // Set the button color to brown
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(25.0), // Set the border radius
                  ),
                ),
                child: Text(
                  "Change Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPasswordField(String label, bool isVisible) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 10),
          child: Text(label),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            obscureText: !isVisible,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    if (label == "Current Password") {
                      currentPasswordVisible = !currentPasswordVisible;
                    } else if (label == "New Password") {
                      newPasswordVisible = !newPasswordVisible;
                    } else if (label == "Re-Enter New Password") {
                      reEnterNewPasswordVisible = !reEnterNewPasswordVisible;
                    }
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
