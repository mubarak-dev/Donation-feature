import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  const Amount({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          icon: const Icon(Icons.attach_money),
          labelText: 'Enter Amount',
          hintText: 'eg. 2345',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
