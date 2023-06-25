import 'package:flutter/material.dart';
import './card_form_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donate'),
        centerTitle: true,
      ),
      body: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CardFormScreen(),
              ));
        },
        title: const Text('Donate Now...'),
        trailing: const Icon(Icons.chevron_right_rounded),
      ),
    );
  }
}
