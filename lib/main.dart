import 'package:flutter/material.dart';
import 'package:project_e_commerce/CartPage.dart';
import 'package:project_e_commerce/ConformOder.dart';
// import 'package:project_e_commerce/Home_Page.dart';
// import 'package:project_e_commerce/Shopping_page.dart';
// import 'package:project_e_commerce/paymentPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:CartPage()
    );
  }
}
