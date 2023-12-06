import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:project_e_commerce/CartPage.dart';
import 'package:project_e_commerce/ConformOder.dart';
// import 'package:project_e_commerce/Home_Page.dart';
// import 'package:project_e_commerce/Shopping_page.dart';
// import 'package:project_e_commerce/paymentPage.dart';
=======
import 'package:project_e_commerce/review.dart';
>>>>>>> cedcf88d554e84e5a25847ca287e0e4ff83e5290

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:CartPage()
    );
=======
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Card());
>>>>>>> cedcf88d554e84e5a25847ca287e0e4ff83e5290
  }
}
