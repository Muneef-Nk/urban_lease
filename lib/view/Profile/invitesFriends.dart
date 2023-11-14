import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
                const Color.fromARGB(255, 119, 57, 35),
              ),
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: Image.network(
                                "data:image/png;base64,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",
                              ),
                            ),
                            CircleAvatar(child:Image.network(""))
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: Text("Invite From Your Contacts"),
          ),
        ],
      ),
    );
  }
}
