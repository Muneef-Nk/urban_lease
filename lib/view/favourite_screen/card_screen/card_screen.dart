import 'package:flutter/material.dart';

class card_screen extends StatefulWidget {
  const card_screen({super.key});

  @override
  State<card_screen> createState() => _card_screenState();
}

class _card_screenState extends State<card_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(height: 230,
        width: 160,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160,
                width: 150,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://i.pinimg.com/564x/32/a9/b3/32a9b3e3a29e12a2c3d895ce87e8c639.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.brown,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 25,
                        )),
                  )
                ]),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Mixer Grinder",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("2000 Rs."),
              )
            ],
          ),

        ),
      ),
    );
  }
}
