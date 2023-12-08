import 'package:rent_cruise/model/products_model.dart';

class Database {
  static List<Map<String, dynamic>> categories = [
    {
      "categoryName": "Electronics",
      "categoryImage": "assets/images/Electronics.jpg",
      "details": electronics,
    },
    {
      "categoryName": "Clothing and Accessories",
      "categoryImage": "assets/images/clothing_and_Accessories.jpg",
      "details": clothing_and_Accessories,
    },
    {
      "categoryName": "Home and Furniture",
      "categoryImage": "assets/images/home_and_Furniture.jpg",
      "details": home_and_Furniture,
    },
    {
      "categoryName": "Sports and Fitness Equipment",
      "categoryImage": "assets/images/sports_and_Fitness_Equipment.jpg",
      "details": sports_and_Fitness_Equipment,
    },
    {
      "categoryName": "Outdoor and Camping Gear",
      "categoryImage": "assets/images/outdoor_and_Camping_Gear.jpg",
      "details": outdoor_and_Camping_Gear,
    },
    {
      "categoryName": "Equipment and Tools",
      "categoryImage": "assets/images/equipment_and_Tools.jpg",
      "details": equipment_and_Tools,
    },
    {
      "categoryName": "Party and Event Supplies",
      "categoryImage": "assets/images/Party_and_Event_Supplies.jpg",
      "details": party_and_Event_Supplies
    },
  ];

  static List<ProductsModel> random = [
    ProductsModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        productName: "Canon EOS R8 (RF24-50mm f/4.5-6.3 IS STM)",
        profileName: "Muneef",
        desc:
            "Many photographers who switch from DSLR to mirrorless struggle with the electronic viewfinder. Seeing a digital image, rather than seeing optically through the lens, is challenging. The image looks different, but there’s also more information available. Focusing and metering are often enhanced with an electronic viewfinder.",
        price: 540,
        place: "Kochi, Kakkanad",
        profilePic:
            "https://i.pinimg.com/564x/9d/db/5c/9ddb5c50fc1b25019921343128339ea3.jpg",
        imgMain:
            "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?q=80&w=1638&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        rating: "4.3",
        image_png: "assets/images/atm_cart.png",
        gallery: [
          "https://images.unsplash.com/photo-1552233706-c3ff6a3da279?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1500634245200-e5245c7574ef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1696858386268-292673ef782b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8",
          "https://images.unsplash.com/photo-1580707221190-bd94d9087b7f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8"
        ]),
    ProductsModel(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        productName: "Nikon D5600 DSLR Camera",
        profileName: "Muneef",
        desc:
            "Many photographers who switch from DSLR to mirrorless struggle with the electronic viewfinder. Seeing a digital image, rather than seeing optically through the lens, is challenging. The image looks different, but there’s also more information available. Focusing and metering are often enhanced with an electronic viewfinder.",
        price: 520,
        place: "Kochi, Kakkanad",
        profilePic:
            "https://i.pinimg.com/564x/9d/db/5c/9ddb5c50fc1b25019921343128339ea3.jpg",
        imgMain:
            "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?q=80&w=1638&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        rating: "4.1",
        image_png: "assets/images/atm_cart.png",
        gallery: [
          "https://images.unsplash.com/photo-1552233706-c3ff6a3da279?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1500634245200-e5245c7574ef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1696858386268-292673ef782b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8",
          "https://images.unsplash.com/photo-1580707221190-bd94d9087b7f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8"
        ]),
  ];

  static List<ProductsModel> home_and_Furniture = [
    ProductsModel(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        productName: "Sofa",
        profileName: "Arjun",
        desc:
            "Quis excepteur nostrud magna eiusmod veniam dolor Laborum cillum in elit aute.. Anim pariatur esse Lorem officia commodo id in commodo laborum. Voluptate adipisicing qui officia officia excepteur elit deserunt sit ea exercitation. Commodo eu aliquip duis nisi consequat officia ea laborum labore irure.Minim elit ex officia eu minim elit exercitation ea irure consectetur proident. Magna enim tempor ex est voluptate laborum enim nisi irure do officia excepteur elit officia excepteur elit reprehenderit cillum in reprehenderit. Amet nulla Lorem commodo pariatur. Fugiat qui ut exercitation cillum eu reprehenderit tempor qui veniam consectetur quis non nisi voluptate.",
        price: 600,
        place: "kollam",
        profilePic:
            "https://i.pinimg.com/564x/9d/db/5c/9ddb5c50fc1b25019921343128339ea3.jpg",
        imgMain: "assets/images/s1.jpg",
        rating: "3.9",
        image_png: "assets/images/s4.png",
        gallery: [
          "assets/images/s2.jpg",
          "assets/images/s3.jpg",
          "assets/images/s5.png",
          "assets/images/s6.png"
        ]),
  ];
  static List<ProductsModel> electronics = [];
  static List<ProductsModel> party_and_Event_Supplies = [];
  static List<ProductsModel> equipment_and_Tools = [];
  static List<ProductsModel> clothing_and_Accessories = [];
  static List<ProductsModel> specialty_Items = [];
  static List<ProductsModel> sports_and_Fitness_Equipment = [];
  static List<ProductsModel> outdoor_and_Camping_Gear = [];
}
