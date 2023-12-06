// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:project_e_commerce/Textfield.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String cardNumber = "";
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = "";
  bool showBackView = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  // ignore: prefer_typing_uninitialized_variables
  var orientation, size, height, width;
  final cardowner = TextEditingController();
  final pincardnumber = TextEditingController();
  // ignore: non_constant_identifier_names
  final CVV = TextEditingController();
  // ignore: non_constant_identifier_names
  final EXP = TextEditingController();
  bool iTswitch = false;
  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Center(
            child: Text(
              'Payment',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Column(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CreditCardWidget(
                width: width / 1.1,
                // enableFloatingCard: useFloatingAnimation,
                // glassmorphismConfig: _getGlassmorphismConfig(),
                cardNumber: pincardnumber.text,
                expiryDate: expiryDate,
                cardHolderName: cardowner.text,
                cvvCode:CVV.text,
                bankName: 'Axis Bank',
                // frontCardBorder: useGlassMorphism
                //     ? null
                //     : Border.all(color: Colors.grey),
                // backCardBorder: useGlassMorphism
                //     ? null
                //     : Border.all(color: Colors.grey),
                showBackView: showBackView,
                obscureCardNumber: true,
                obscureCardCvv: true,
                isHolderNameVisible: true,
                cardBgColor: Colors.orangeAccent,

                //  backgroundImage:""

                //isSwipeGestureEnabled: true,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
              ),
              const SizedBox(
                height: 20,
              ),
              CreditCardWidget(
                  width: width / 1.1,
                  // enableFloatingCard: useFloatingAnimation,
                  // glassmorphismConfig: _getGlassmorphismConfig(),
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  bankName: 'Axis Bank',
                  // frontCardBorder: useGlassMorphism
                  //     ? null
                  //     : Border.all(color: Colors.grey),
                  // backCardBorder: useGlassMorphism
                  //     ? null
                  //     : Border.all(color: Colors.grey),
                  showBackView: showBackView,
                  obscureCardNumber: true,
                  obscureCardCvv: true,
                  isHolderNameVisible: true,
                  cardBgColor: Colors.black26,

                  //  backgroundImage:""

                  //isSwipeGestureEnabled: true,
                  onCreditCardWidgetChange:
                      (CreditCardBrand creditCardBrand) {})
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: SizedBox(
              height: height / 15,
              width: width / 1,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // Set text and icon color
                    side: const BorderSide(
                      width: 2,
                      color: Colors.orange, // Set border color
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Set border radius
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/Plus.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Add New Card",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Card Owner',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: height / 15,
                width: width / 1,
                decoration: BoxDecoration(  color: const Color.fromARGB(255, 228, 234, 238),borderRadius: BorderRadius.circular(10)),
                child: PaymentTextField(
                    text: "Name",
                    icon: const Text(''),
                    obsecur: false,
                    TextEditingController: cardowner),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Card Number',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
              decoration: BoxDecoration(  color: const Color.fromARGB(255, 228, 234, 238),borderRadius: BorderRadius.circular(10)),
                  height: height / 15,
                  width: width / 1,
                  child: PaymentTextField(
                      text: "Card Number",
                      icon: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.remove_red_eye)),
                      obsecur: true,
                      TextEditingController: pincardnumber)),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('EXP',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: width / 2.7,
                  ),
                  const Text('CVV',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  Container(decoration: BoxDecoration(  color: const Color.fromARGB(255, 228, 234, 238),borderRadius: BorderRadius.circular(10)),
                  
                      height: height / 15,
                      width: width / 2.3,
                      child: PaymentTextField(
                          text: "",
                          icon: const Text(''),
                          obsecur: false,
                          TextEditingController: EXP)),
                  SizedBox(
                    width: width / 20,
                  ),
                  Container(
                    decoration: BoxDecoration(  color: const Color.fromARGB(255, 228, 234, 238),borderRadius: BorderRadius.circular(10)),
                      height: height / 15,
                      width: width / 2.3,
                      child: PaymentTextField(
                          text: "",
                          icon: const Text(''),
                          obsecur: false,
                          TextEditingController: CVV))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text("Save Card Info",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                        SizedBox(width: width/3,),
                        Switch(value: iTswitch, onChanged: (value) {
                          
                        },activeTrackColor: Colors.green,)  
                ],
              ),
              
            ],
          ),
        ),
       
      ]),
      bottomNavigationBar:   SizedBox(
              height: height / 13,
              width: width / 1,
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
                  child:const Center(child: Text("Save Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),))),
    ));
  }
}
