import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:rent_cruise/controller/add_card/add_card_controller.dart';
import 'package:rent_cruise/controller/card_screeen/card_screen_controller.dart';
import 'package:rent_cruise/controller/checkout_controller/checkout_controller.dart';
import 'package:rent_cruise/controller/edit_profile/edit_page_controller.dart';
import 'package:rent_cruise/controller/home_controller/homecontroller.dart';
import 'package:rent_cruise/controller/login_controller/login_controller.dart';
import 'package:rent_cruise/controller/product_details_provider/details_screen_controller.dart';
import 'package:rent_cruise/controller/profile_screen_controller/profile_screen_controller.dart';
import 'package:rent_cruise/controller/saved_screen_controller.dart/saved_controller.dart';
import 'package:rent_cruise/controller/search_controller/search_controller.dart';
import 'package:rent_cruise/model/search_screen.dart/search_item_model.dart';
import 'package:rent_cruise/service/location_service.dart';
import 'package:rent_cruise/view/welcome_screen/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<SearchItemModel>('searchBox');
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyC6IeUPi48vXRoveXEL9MxlFwBUJ3LVGnQ",
          appId: "1:1056899656559:android:4311fdb07d4c806495969a",
          messagingSenderId: '',
          projectId: "urban-lease",
          storageBucket: "urban-lease.appspot.com"));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => LoginScreenController()),
          ChangeNotifierProvider(
              create: (context) => ProductDetailsController()),
          ChangeNotifierProvider(create: (context) => LocationProvider()),
          ChangeNotifierProvider(create: (context) => SearchScreenController()),
          ChangeNotifierProvider(create: (context) => CheckoutController()),
          ChangeNotifierProvider(create: (context) => CardScreenController()),
          ChangeNotifierProvider(create: (context) => AddCardController()),
          ChangeNotifierProvider(create: (context) => EditPageController()),
          ChangeNotifierProvider(create: (context) => SavedController()),
          ChangeNotifierProvider(create: (context) => HomeController()),
          ChangeNotifierProvider(
              create: (context) => ProfileScreenController()),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: "poppins"),
            home: WelcomeScreen()));
  }
}
