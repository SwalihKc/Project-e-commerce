import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PaymentTextField extends StatelessWidget {
  final bool obsecur;
  final String text;
  final Widget icon;
 final TextEditingController;
  const PaymentTextField(
      {super.key,
      required this.text,
      required this.icon,
      required this.obsecur,
       // ignore: non_constant_identifier_names
       required this.TextEditingController,
       });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: SizedBox(
        height: 50,
        width: 300,
        child: TextField(
          style: const TextStyle(fontSize: 20),
         controller:TextEditingController ,
          obscureText: obsecur,
          decoration: InputDecoration(
            
            suffixIcon: icon,
            focusColor: Colors.black,
            hintText: text,
            hintStyle: const TextStyle(fontWeight: FontWeight.w600,),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          // controller: cController,
          keyboardType: TextInputType.phone,
        ),
      ),
    );
  }
}