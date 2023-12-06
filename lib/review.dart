import 'package:flutter/material.dart';
import 'package:project_e_commerce/Address.dart';

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
          leading: const BackButton(
            color: Colors.black,
          ),
          title: const Center(
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
                  const Text(
                    '245 Reviews',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>Address()
                            ));
                      },
                      child: const Text('Add Reviews'))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset('assets/man.png'),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Rashim',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Image.asset('assets/Star.png')
                ],
              ),
              const Text(
                  'My name is mohammed rashim, iam comming from malappuram.iam 21 years old. iam a b.com graduate.iam a flutter developer'),
              const SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/man.png'),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Swalih',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Image.asset('assets/Star.png')
                ],
              ),
              const Text(
                  'My name is mohammed rashim, iam comming from malappuram.iam 21 years old. iam a b.com graduate.iam a flutter developer'),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset('assets/man.png'),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Hafiz',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Image.asset('assets/Star.png')
                ],
              ),
              const Text(
                  'My name is mohammed rashim, iam comming from malappuram.iam 21 years old. iam a b.com graduate.iam a flutter developer'),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset('assets/man.png'),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Adhu',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Image.asset('assets/Star.png')
                ],
              ),
              const Text(
                  'My name is mohammed rashim, iam comming from malappuram.iam 21 years old. iam a b.com graduate.iam a flutter developer'),
            ],
          ),
        ),
      ),
    );
  }
}
