import 'package:flutter/material.dart';
import 'package:project_e_commerce/Home_Page.dart';

class ConFormOders extends StatelessWidget {
  const ConFormOders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        
      ) ,
      body: Column(children: [
        SizedBox(height: height/5,),
        // Image.asset('assets/undraw_order_confirmed_aaw7 1.png')
      ]),
    );
  }
}