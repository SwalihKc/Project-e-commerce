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
        body: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '245 Reviews',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Add Reviews'))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset('assets/man.png'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Rashim',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              Text(
                  'My name is mohammed rashim, iam comming from malappuram.iam 21 years old. iam a b.com graduate.iam a flutter developer'),
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/man.png'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Swalih',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              Text(
                  'My name is mohammed rashim, iam comming from malappuram.iam 21 years old. iam a b.com graduate.iam a flutter developer'),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset('assets/man.png'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Hafiz',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              Text(
                  'My name is mohammed rashim, iam comming from malappuram.iam 21 years old. iam a b.com graduate.iam a flutter developer'),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset('assets/man.png'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Adhu',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              Text(
                  'My name is mohammed rashim, iam comming from malappuram.iam 21 years old. iam a b.com graduate.iam a flutter developer'),
            ],
          ),
        ),
      ),
    );
  }
}
