class ProductsModel {
  final String name;
  final String desc;
  final int price;
  final String img;
  final String imagePng;
  final String rating;
  final List gallery;

  ProductsModel({
    required this.imagePng,
    required this.name,
    required this.desc,
    required this.price,
    required this.img,
    required this.rating,
    required this.gallery,
  });
}

//rondom product in home scren flash rent
List<ProductsModel> dataList = [
  ProductsModel(
      name: "watch",
      desc:
          "Quis excepteur nostrud magna eiusmod veniam dolor Laborum cillum in elit aute.. Anim pariatur esse Lorem officia commodo id in commodo laborum. Voluptate adipisicing qui officia officia excepteur elit deserunt sit ea exercitation. Commodo eu aliquip duis nisi consequat officia ea laborum labore irure.Minim elit ex officia eu minim elit exercitation ea irure consectetur proident. Magna enim tempor ex est voluptate laborum enim nisi irure do officia excepteur elit officia excepteur elit reprehenderit cillum in reprehenderit. Amet nulla Lorem commodo pariatur. Fugiat qui ut exercitation cillum eu reprehenderit tempor qui veniam consectetur quis non nisi voluptate.",
      price: 550,
      img:
          "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?q=80&w=1638&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      rating: "4.5",
      imagePng: "assets/images/atm_cart.png",
      gallery: [
        "https://images.unsplash.com/photo-1552233706-c3ff6a3da279?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D",
        "https://images.unsplash.com/photo-1500634245200-e5245c7574ef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D",
        "https://images.unsplash.com/photo-1696858386268-292673ef782b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8",
        "https://images.unsplash.com/photo-1580707221190-bd94d9087b7f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8"
      ]),
  ProductsModel(
      name: "muneef",
      desc:
          "gjdldsgjldgjlsjsl lgdsfgsldjs gdlkfgjdflg dsglkdfsgdfslg dfsgjf dg sgds lfgdfsgg fd gfdgdfggjdfgj fdgldfgdfj  ",
      price: 55,
      img:
          "https://imgs.search.brave.com/kUFO6RE-vrr84YBFFHsvAjMHUmCFG099byjKKQF2Cuk/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/NDQzNjU3MTItOTFj/ZDQ5MDRjZDA3P2l4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4Tlh4OFky/VnNiQ1V5TUhCb2Iy/NWxmR1Z1ZkRCOGZE/QjhmSHd3Jnc9MTAw/MCZxPTgw",
      rating: "6.9",
      imagePng: "assets/images/table.png",
      gallery: [
        "https://i1.adis.ws/i/canon/eos-r5_front_rf24-105mmf4lisusm_32c26ad194234d42b3cd9e582a21c99b",
        "https://imgs.search.brave.com/a-0mqjjZx7GOUbrXtv7iG7TZA4y7QAyuI3uHjnanXco/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/cGl4YWJheS5jb20v/cGhvdG8vMjAxNS8w/MS8yMC8xMi81MS9t/b2JpbGUtNjA1NDIy/XzY0MC5qcGc",
        "https://imgs.search.brave.com/8ioO-D4CGK68RMce6lONVojTHZymVClWPy2b57arEFc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/MjU1OTg5MTIwMDMt/NjYzMTI2MzQzZTFm/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4TW54OGNH/aHZibVY4Wlc1OE1I/eDhNSHg4ZkRBPQ",
        "https://imgs.search.brave.com/a-0mqjjZx7GOUbrXtv7iG7TZA4y7QAyuI3uHjnanXco/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/cGl4YWJheS5jb20v/cGhvdG8vMjAxNS8w/MS8yMC8xMi81MS9t/b2JpbGUtNjA1NDIy/XzY0MC5qcGc"
      ]),
  ProductsModel(
      name: "phown",
      desc:
          "gjdldsgjldgjlsjsl lgdsfgsldjs gdlkfgjdflg dsglkdfsgdfslg dfsgjf dg sgds lfgdfsgg fd gfdgdfggjdfgj fdgldfgdfj  ",
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
