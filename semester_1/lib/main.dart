import 'package:flutter/material.dart';
import 'package:semester_1/Screen/signup.dart';
import 'package:semester_1/Screen/home.dart';
import 'package:semester_1/Widget/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color.fromRGBO(35, 39, 48, 1), // Dark primary color
        secondaryHeaderColor: Color.fromARGB(255, 255, 255, 255), // Light secondary color
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple, // Primary color swatch
          accentColor: Colors.deepPurpleAccent, // Accent color
        ),
      ),
      home: const SignUpScreen(),
    );
  }
} 
