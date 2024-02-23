import 'package:flutter/material.dart';
import 'package:semester_1/Screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(35, 39, 48, 1),
        colorScheme:  ColorScheme.fromSeed(seedColor: const Color.fromRGBO(240, 240, 240, 1))
      ),
      home: const HomePage(),
    );
  }
}
