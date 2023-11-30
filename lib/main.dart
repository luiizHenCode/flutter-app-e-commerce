import 'package:flutter/material.dart';

import './pages/home/home_page.dart';
import './pages/product/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce app',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/product': (context) => const ProductPage(),
      },
    );
  }
}
