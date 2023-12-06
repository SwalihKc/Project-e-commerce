import 'package:flutter/material.dart';
// import 'package:project_e_commerce/Home_Page.dart';

class ConFormOders extends StatelessWidget {
  const ConFormOders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(children: [
        Stack(children: [
          Image.asset('assets/Mask Group.png'),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Center(
                child: Image.asset('assets/undraw_order_confirmed_aaw7 1.png')),
          )
        ]),
        SizedBox(
          height: 30,
        ),
        const Text(
          "Order Confirmed!",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Text(
          "You order has been confirmed, We will send",
          style: TextStyle(fontSize: 16),
        ),
        Text(
          "you confirmation email shortly.",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        const Color.fromARGB(255, 228, 234, 238)),
                    shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " Go to order",
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ))),
      ]),
      bottomNavigationBar: SizedBox(
          height: 70,
          width: 333,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                // Set text and icon color
                backgroundColor: Colors.orange,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)) // Set border radius
                    ),
              ),
              onPressed: () {},
              child: const Center(
                child: Text(
                  "Continue Shoping",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ))),
    );
  }
}
