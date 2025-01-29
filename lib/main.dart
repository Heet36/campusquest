import 'package:college/Pages/AppDrawer.dart';
import 'package:flutter/material.dart';
import 'pages/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DMI App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF0039A6),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto', // You can change this to match your design
        useMaterial3: true,
      ),
      home: const FirstPage()    );
  }
}