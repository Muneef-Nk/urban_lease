import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: 350,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber),
                    child: ClipRRect(borderRadius:BorderRadius.circular(20) ,
                      child: Image.network(
                                      "https://i.pinimg.com/564x/76/5d/89/765d89a14f6b6cb4b0eefdcf9e8c2766.jpg",
                                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(children: [Row(
                  children: [ Padding(
                    padding: const EdgeInsets.only(top: 20,left: 20),
                    child: CircleAvatar(radius: 20,child:Center(child: Icon(Icons.arrow_back_ios,color: Colors.white,)),backgroundColor: Colors.black,),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 240),
                      child: CircleAvatar(radius: 20,child:Icon(Icons.favorite_border,color: Colors.white,),backgroundColor: Colors.black,),
                    ),
                  ],
                ),
                SizedBox(height: 210,),
                Padding(
                  padding: const EdgeInsets.only(right: 20,),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [Icon(Icons.star,color: Colors.amber,),Text("4.5",style: TextStyle(color: Colors.white),)],),
                )],)
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text("Washing machine",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text("Washing machines are appliances that help you clean your clothes and other fabrics. There are different types and features of washing machines that you can choose from depending on your needs and preferences."),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Price/Day:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    child: Center(
                      child: Text(
                        "200 Rs.",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {
                             
                            },
                            icon: Icon(Icons.add)),
                        Text(
                        "",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21),
                        ),
                        IconButton(
                            onPressed: () {
                             
                            },
                            icon: Icon(Icons.remove)),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Price/Month:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    child: Center(
                      child: Text(
                        "6000 Rs.",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {
                              
                            },
                            icon: Icon(Icons.add)),
                        Text(
                          "",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21),
                        ),
                        IconButton(
                            onPressed: () {
                             
                            },
                            icon: Icon(Icons.remove)),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
