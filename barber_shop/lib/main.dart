import 'package:barber_shop/bottomnavigation/bottomnavigation.dart';
import 'package:barber_shop/pages/home.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // Stripe.publishableKey = "";
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Barber Shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BottomNavigatorBar());
  }
}
