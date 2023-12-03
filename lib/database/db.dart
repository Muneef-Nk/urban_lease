import 'package:rent_cruise/model/products_model.dart';

class Database {
  static List<Map<String, dynamic>> categories = [
    {
      "categoryName": "electronics",
      "categoryImage": "jbfh",
      "details": electronic
    },
    {"categoryName": "howm", "categoryImage": "jbfh", "details": home},
    {"categoryName": "kitchen", "categoryImage": "jbfh", "details": dailyuse},
    {"categoryName": ",electronics", "paltifja": "jbfh", "details": plastic}
  ];
  static List<ProductsModel> electronic = [
    ProductsModel(
        name: "watch",
        desc:
            "Quis excepteur nostrud magna eiusmod veniam dolor Laborum cillum in elit aute.. Anim pariatur esse Lorem officia commodo id in commodo laborum. Voluptate adipisicing qui officia officia excepteur elit deserunt sit ea exercitation. Commodo eu aliquip duis nisi consequat officia ea laborum labore irure.Minim elit ex officia eu minim elit exercitation ea irure consectetur proident. Magna enim tempor ex est voluptate laborum enim nisi irure do officia excepteur elit officia excepteur elit reprehenderit cillum in reprehenderit. Amet nulla Lorem commodo pariatur. Fugiat qui ut exercitation cillum eu reprehenderit tempor qui veniam consectetur quis non nisi voluptate.",
        price: 550,
        img:
            "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?q=80&w=1638&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        rating: "4.5",
        imagePng: "assets/images/table.png",
        gallery: [
          "https://images.unsplash.com/photo-1552233706-c3ff6a3da279?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1500634245200-e5245c7574ef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1696858386268-292673ef782b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8",
          "https://images.unsplash.com/photo-1580707221190-bd94d9087b7f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8"
        ]),
  ];
  static List<ProductsModel> home = [
    ProductsModel(
        name: "watch",
        desc:
            "Quis excepteur nostrud magna eiusmod veniam dolor Laborum cillum in elit aute.. Anim pariatur esse Lorem officia commodo id in commodo laborum. Voluptate adipisicing qui officia officia excepteur elit deserunt sit ea exercitation. Commodo eu aliquip duis nisi consequat officia ea laborum labore irure.Minim elit ex officia eu minim elit exercitation ea irure consectetur proident. Magna enim tempor ex est voluptate laborum enim nisi irure do officia excepteur elit officia excepteur elit reprehenderit cillum in reprehenderit. Amet nulla Lorem commodo pariatur. Fugiat qui ut exercitation cillum eu reprehenderit tempor qui veniam consectetur quis non nisi voluptate.",
        price: 550,
        img:
            "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?q=80&w=1638&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        rating: "4.5",
        imagePng: "assets/images/table.png",
        gallery: [
          "https://images.unsplash.com/photo-1552233706-c3ff6a3da279?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1500634245200-e5245c7574ef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1696858386268-292673ef782b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8",
          "https://images.unsplash.com/photo-1580707221190-bd94d9087b7f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8"
        ]),
  ];
  static List<ProductsModel> dailyuse = [
    ProductsModel(
        name: "watch",
        desc:
            "Quis excepteur nostrud magna eiusmod veniam dolor Laborum cillum in elit aute.. Anim pariatur esse Lorem officia commodo id in commodo laborum. Voluptate adipisicing qui officia officia excepteur elit deserunt sit ea exercitation. Commodo eu aliquip duis nisi consequat officia ea laborum labore irure.Minim elit ex officia eu minim elit exercitation ea irure consectetur proident. Magna enim tempor ex est voluptate laborum enim nisi irure do officia excepteur elit officia excepteur elit reprehenderit cillum in reprehenderit. Amet nulla Lorem commodo pariatur. Fugiat qui ut exercitation cillum eu reprehenderit tempor qui veniam consectetur quis non nisi voluptate.",
        price: 550,
        img:
            "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?q=80&w=1638&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        rating: "4.5",
        imagePng: "assets/images/table.png",
        gallery: [
          "https://images.unsplash.com/photo-1552233706-c3ff6a3da279?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1500634245200-e5245c7574ef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1696858386268-292673ef782b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8",
          "https://images.unsplash.com/photo-1580707221190-bd94d9087b7f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8"
        ]),
  ];
  static List<ProductsModel> plastic = [
    ProductsModel(
        name: "watch",
        desc:
            "Quis excepteur nostrud magna eiusmod veniam dolor Laborum cillum in elit aute.. Anim pariatur esse Lorem officia commodo id in commodo laborum. Voluptate adipisicing qui officia officia excepteur elit deserunt sit ea exercitation. Commodo eu aliquip duis nisi consequat officia ea laborum labore irure.Minim elit ex officia eu minim elit exercitation ea irure consectetur proident. Magna enim tempor ex est voluptate laborum enim nisi irure do officia excepteur elit officia excepteur elit reprehenderit cillum in reprehenderit. Amet nulla Lorem commodo pariatur. Fugiat qui ut exercitation cillum eu reprehenderit tempor qui veniam consectetur quis non nisi voluptate.",
        price: 550,
        img:
            "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?q=80&w=1638&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        rating: "4.5",
        imagePng: "assets/images/table.png",
        gallery: [
          "https://images.unsplash.com/photo-1552233706-c3ff6a3da279?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1500634245200-e5245c7574ef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D",
          "https://images.unsplash.com/photo-1696858386268-292673ef782b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8",
          "https://images.unsplash.com/photo-1580707221190-bd94d9087b7f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8"
        ]),
  ];
}
