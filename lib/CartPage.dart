import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isPruss = false;
  @override
  Widget build(BuildContext context) {
    final List listtile = [
      listtilchanges(
        const Color.fromARGB(255, 228, 234, 238),
      ),
      listtilchanges(Colors.white)
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: const Icon(Icons.arrow_back),
        title: const Padding(
          padding: EdgeInsets.only(right: 80),
          child: Center(
            child: Text(
              "Cart",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 250,
          width: 333,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return SizedBox(
                    height: 115,
                    width: 333,
                    child: Card(
                        color: Colors.white,
                        borderOnForeground: true,
                        elevation: 10,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                )),
                            Expanded(
                              flex: 3,
                              child: ListTile(
                                title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Men's Til-Day T-Shirt",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      const Text(
                                        'Nike Sportswear',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800),
                                      ),
                                     
                                      const Text(
                                        '\$45 (-\$4.00 Tax)',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 111, 106, 106),
                                            fontSize: 10),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.arrow_drop_down_sharp),
                                          const Text(
                                            "1",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 111, 106, 106),
                                                fontSize: 15),
                                          ),
                                          const Icon(Icons.arrow_drop_up_outlined),
                                          const SizedBox(
                                            width: 100,
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons
                                                  .delete_outline_outlined))
                                        ],
                                      )
                                    ]),
                              ),
                            )
                          ],
                        )));
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height:5,
                );
              },
              itemCount: 2),
        ),
        
        SizedBox(
          height: 25,
          width: 370,
          child: ListTile(
            leading: const Text(
              "Delivery Address",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_right_sharp)),
          ),
         
        ),
         const SizedBox(height: 20,),
        SizedBox(
            height: 60,
            width: 370,
            child: ListTile(
              leading: Container(
                height: 70,
                width: 70,
                color: Colors.black87,
              ),
              title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "adress location 22/22",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "MD",
                      style: TextStyle(
                          color: Color.fromARGB(255, 220, 207, 207),
                          fontSize: 12),
                    )
                  ]),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    isPruss = !isPruss;
                  });
                },
                icon: Icon(
                  Icons.task_alt_outlined,
                  color: isPruss ? Colors.green : Colors.grey,
                ),
              ),
            )),
       
        ListTile(
          leading: const Text(
            "Payment Method",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          trailing:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_right_sharp)),
        ),
        
        SizedBox(
            height: 60,
            width: 370,
            child: ListTile(
              leading: Container(
                height: 70,
                width: 70,
                color: Colors.black87,
              ),
              title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "visa classic",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "12******@@#",
                      style: TextStyle(
                          color: Color.fromARGB(255, 220, 207, 207),
                          fontSize: 12),
                    )
                  ]),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    isPruss = !isPruss;
                  });
                },
                icon: Icon(
                  Icons.task_alt_outlined,
                  color: isPruss ? Colors.green : Colors.grey,
                ),
              ),
            )),
    
        const Text(
          "Order info",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
     
        const SizedBox(
          height: 30,width: 370,
          child: ListTile(
            leading: Text(
              "Subtotel",
              style: TextStyle(color: Colors.black38, fontSize: 15),
            ),
            trailing: Text(
              "\$222",
              style: TextStyle(
                  color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
       
         const SizedBox(
          height: 30,width: 370,
           child: ListTile(
            leading: Text(
              "Subtotel",
              style: TextStyle(color: Colors.black38, fontSize: 15),
            ),
            trailing: Text(
              "\$222",
              style: TextStyle(
                  color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
                 ),
         ),
           const SizedBox(
          height: 30,width: 370,
           child: ListTile(
            leading: Text(
              "Subtotel",
              style: TextStyle(color: Colors.black38, fontSize: 15),
            ),
            trailing: Text(
              "\$222",
              style: TextStyle(
                  color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
                 ),
         )

        // Row(children: [SizedBox(width:10,),Text("Delivery Address", style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 20,
        //           fontWeight: FontWeight.w600),)],)
      ]),
      bottomNavigationBar:  SizedBox(
              height:70,
              width:370,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // Set text and icon color
                   backgroundColor: Colors.orange,
                    shape: const RoundedRectangleBorder(
                      borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20) 
                         ) // Set border radius
                    ),
                  ),
                  onPressed: () {},
                  child:const Center(child: Text("Checkout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),))),
    );
  }
}

class listtilchanges {
  final Color colorss;

  listtilchanges(
    this.colorss,
  );
}
