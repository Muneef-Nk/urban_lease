import 'package:flutter/material.dart';
import 'package:rent_cruise/view/favourite_screen/card_screen/card_screen.dart';

class favourite_screeen extends StatelessWidget {
  const favourite_screeen({super.key});

  @override
  Widget build(BuildContext context) {
    List CategoryList = ["Home Equipments","Medical Equipment","Electronics","Furnitures"];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favourite",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              child: ListView.builder(
                itemCount: CategoryList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.brown),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(CategoryList[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent:  230,
                      crossAxisCount: 2),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return card_screen();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
