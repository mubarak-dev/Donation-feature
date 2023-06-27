import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:donations/forms/text_form_fields.dart';

class CardFormScreen extends StatelessWidget {
  //const CardFormScreen({super.key});   1st
  const CardFormScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Card payment'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextForms(),
              const Text(
                'Card Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  // fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: Container(
                  color: Colors.black,
                  child: CardFormField(
                    controller: CardFormEditController(),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('pay'),
              )
            ]),
      ),
    );
  }
}
