import 'package:bmi_calculator_app/home_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:  'BMI CALCULATOR',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
    
  }
}