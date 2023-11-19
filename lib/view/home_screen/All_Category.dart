import 'package:flutter/material.dart';

class AllCategory extends StatefulWidget {
  const AllCategory({super.key});

  @override
  State<AllCategory> createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  List<Map<String, String>> categories = [
    {
      'image':
          'https://media.istockphoto.com/id/1196974664/photo/set-of-home-kitchen-appliances-in-the-room-on-the-wall-background.jpg?s=612x612&w=0&k=20&c=dUSAMg-LUh6j-4437kz30w8k7KgJiR8yrTTXhGiFh0s=',
      'name': 'HOME EQUIPMENTS',
    },
    {
      'image':
          'https://img.freepik.com/premium-photo/medical-equipment-device-isolated-white-background_178789-339.jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1699056000&semt=ais',
      'name': 'MEDICAL EQUIPMENTS',
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlM4cUvl-LzV5jTnFp48nod4uOfn9lpBgnbQ&usqp=CAU',
      'name': 'FURNITURE',
    },
    {
      'image':
          'https://img1.wsimg.com/isteam/ip/119e2d1b-0ed9-4a03-a51a-334684501753/news12_5.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=h:1000,cg:true',
      'name': 'ELECTRONICS',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Categories",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SizedBox(
        child: GridView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 230, crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          categories[index]['image'].toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        categories[index]['name'].toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
