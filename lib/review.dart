import 'package:flutter/material.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
          ),
          title: Center(
            child: Text(
              'Reviews',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Column(
          children: [
            Text(
              '245 Reviews',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),Row(children: [
              Text('sdfghjdcvb')
            ],)
          ],
        ),
      ),
    );
  }
}
