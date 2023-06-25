import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import './screens/home_screen.dart';
import '../.env';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = stripePublishableKey;
  await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donation payment feature',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF000A1F),
          secondary: Color(0xFF000A1F),
        ),
        primaryColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}
