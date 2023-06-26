import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class CardFormScreen extends StatelessWidget {
  const CardFormScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card payment'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Card information',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.black,
              child: CardFormField(
                controller: CardFormEditController(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('pay'),
            )
          ],
        ),
      ),
    );
  }
}
