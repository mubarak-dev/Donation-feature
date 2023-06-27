import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../screens/card_form_screen.dart';

//import 'amount.dart';

class TextForms extends StatelessWidget {
  const TextForms({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          //title: const Text('Card payment'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Donation Amount',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial',
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              icon: const Icon(Icons.attach_money),
                              labelText: 'Enter Amount',
                              hintText: 'eg. 2345',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          'Contact Information',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Arial',
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Enter your Email',
                              hintText: 'Email',
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        IntlPhoneField(
                          decoration: InputDecoration(
                              labelText: 'Phone Number',
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CardFormScreen(),
                                ));
                          },
                          child: const Text(
                            'Pay With Card',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
