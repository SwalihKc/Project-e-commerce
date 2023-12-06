import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  TextEditingController name = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController address = TextEditingController();

  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Center(child: Text('Address')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Feildtext(text: 'Name', ctrl: name),
              const SizedBox(
                height: 10,
              ),
              const Text('Country',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 200, child: Feildtext(text: "Country", ctrl: country)),
              const SizedBox(
                height: 10,
              ),
              // Row(
              //   children: [
              //   Feildtext(text: "City", ctrl: city),
              // ],
              // ),
              const Text(
                "Phone Number",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Feildtext(text: "PhoneNumber", ctrl: phonenumber),
              const SizedBox(height: 10),
              const Text(
                "Address",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              Feildtext(text: "Address", ctrl: address),
              const SizedBox(height: 10),
              ListTile(
                leading: Text(
                  'Save as primary address',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                trailing: CupertinoSwitch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// TEXTFEILD.......

class Feildtext extends StatelessWidget {
  // final bool obsecure;
  final String text;
  // final Widget icon;
  TextEditingController ctrl;
  Feildtext({
    super.key,
    required this.text,
    // required this.icon,
    // required this.obsecure,
    required this.ctrl,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return TextField(
      controller: ctrl,
      // obscureText: obsecure,
      decoration: InputDecoration(
        // suffixIcon: icon,
        focusColor: Colors.black,
        hintText: text,
        hintStyle: const TextStyle(fontWeight: FontWeight.w600),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      keyboardType: TextInputType.phone,
    );
  }
}
