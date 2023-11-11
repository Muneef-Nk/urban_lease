import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
            "Privacy Policy",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              ExpansionTile(
                title: Text(
                  "Cancelation Policy",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.brown),
                ),
                children: [
                  Text(
                    "t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Terms \$ Condition",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.brown),
                ),
                children: [
                  Text(
                    "t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Advertisement",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.brown),
                ),
                children: [
                  Text(
                    "t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Your Rights",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.brown),
                ),
                children: [
                  Text(
                    "t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Security Precautions",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.brown),
                ),
                children: [
                  Text(
                    "t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
