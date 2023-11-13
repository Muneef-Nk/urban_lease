import 'package:flutter/material.dart';

class search_screen extends StatefulWidget {
  const search_screen({super.key});

  @override
  State<search_screen> createState() => _search_screenState();
}

class _search_screenState extends State<search_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: SearchBar(hintText: "Search"),
                ),
              ),
            ),
            Container(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(
                        "Clear All",
                        style: TextStyle(
                            color: Colors.brown, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )),
            ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Mixer grinder"),
                          Icon(
                            Icons.cancel,
                            color: Colors.brown,
                          )
                        ]),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}