import 'package:flutter/material.dart';

class shopping extends StatefulWidget {
  const shopping({super.key});

  @override
  State<shopping> createState() => _shoppingState();
}

class _shoppingState extends State<shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(actions: [Image.asset('assets/Back.png'),],leading:Image.asset('assets/Cart.png') ,),);
  }
}