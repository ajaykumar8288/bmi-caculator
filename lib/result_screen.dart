// ignore_for_file: invalid_required_positional_param, must_be_immutable

import 'package:flutter/material.dart';
import 'formula.dart';

class ResultScreen extends StatefulWidget {
  final int weight;
  final int height;
  final int age;

  const ResultScreen({
    Key? key,
    required this.weight,
    required this.height,
    required this.age,
  }) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  Logic logic = Logic();
  double bmiResult = 0;
  @override
  void initState() {
    bmiResult = logic.calculateBmi(widget.height, widget.weight);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Your Result",
              style: TextStyle(
                  color: Colors.black, fontSize: 48, fontWeight: FontWeight.w500),
            ),
            Text(bmiResult.toStringAsFixed(1),
            style: const TextStyle(color: Colors.blue,fontSize: 64),)
          ],
        ),
      ),
    );
  }
}
