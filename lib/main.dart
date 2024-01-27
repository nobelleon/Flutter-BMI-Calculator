import 'package:bmi_calculator/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        accentColor: const Color(0xFF101427),
        primaryColor: const Color(0xFF090C22),
        scaffoldBackgroundColor: const Color(0xFF090C22),
      ),
      home: SplashScreen(),
    );
  }
}
