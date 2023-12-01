import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

// ignore: prefer_typing_uninitialized_variables
var orientation, size, height, width;

class _HomepageState extends State<Homepage> {
   int selectinxd = 0;
  bool showbutton = false;
  @override
  Widget build(BuildContext context) {
    final List<Image> Brandlist = [
      Image.asset('assets/Adidas.png'),
      Image.asset('assets/nake.png'),
      Image.asset('assets/fila-9 1.png'),
      Image.asset('assets/Reebok_logo_PNG6.png'),
      
    ];
    final List<String> Brandlist1 = [
      "Adidas",
      'Nike',
      'Fila',
      "Reebok",
     
    ];
    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset(
          "assets/menu.png",
          height: 30,
          width: 30,
        ),
        actions: [Image.asset("assets/Cart.png")],
      ),
      body: Column(children: [
        const Row(
          children: [
            SizedBox(width: 10),
            Text(
              "Hello",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              "Welcome to BStore.",
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 7,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              height: height / 14,
              width: width / 1.3,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 228, 234, 238),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: TextField(
                  style: const TextStyle(fontSize: 20),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 228, 234, 238),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Search',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Container(
              height: height / 14,
              width: width / 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 245, 165, 46),
                      Color.fromARGB(255, 247, 129, 19)
                    ]),
              ),
              child: const Icon(
                Icons.keyboard_voice_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              'Choose Brand',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            // SizedBox(
            //   width: width / 2.4,
            // ),
            // TextButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => brandsee(),
            //           ));
            //     },
            //     child: const Text(
            //       'View All',
            //       style: TextStyle(color: Colors.black45, fontSize: 15),
            //     )),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            SizedBox(
              height: height / 13,
              width: width / 1.09,
              child: ListView.separated(
                
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: height / 13,
                      width: width / 3,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 234, 238),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width / 60,
                          ),
                          Container(
                              height: height / 15,
                              width: width / 8,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Brandlist[index]),
                          SizedBox(
                            width: width / 60,
                          ),
                          Center(
                              child: Text(
                            Brandlist1[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ))
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: width / 35,
                    );
                  },
                  itemCount: 4),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              "New Arraival",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: width / 2.4,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'View All',
                  style: TextStyle(color: Colors.black45, fontSize: 15),
                )),
          ],
        ),
        Expanded(
            child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: width * 0.5,
              childAspectRatio: 0.8,
              crossAxisSpacing: 7,
              mainAxisSpacing: 8),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: height / 4.35,
                  width: width / 2.5,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 234, 238),
                      borderRadius: BorderRadius.circular(15)),
                      child:Row(children: [Image.asset("assets/Vector.png")],)
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Column(
                    children: [
                      Text(
                        "cloth name,brand",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text('\$900',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w800)),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ))
      ]),
     
      bottomNavigationBar: BottomNavigationBar(
        useLegacyColorScheme: false,
        fixedColor: Color.fromARGB(255, 255, 137, 2),
        backgroundColor: Color.fromARGB(255, 255, 137, 2),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/Vector.png'), label: 'Fevourite'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/cart (1).png'), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/payment.png'), label:'Payment'),
        ],
        currentIndex: selectinxd,
        onTap: (index) {
          setState(() {
            selectinxd = index;
            showbutton = index == 0;
            
          });
        },
       ),
    ));
  }
}
