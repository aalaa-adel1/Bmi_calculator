
import 'package:bmi_calculator/modules/result/result.dart';
import 'package:flutter/material.dart';

import 'modules/bmi/calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiScreen(),
    );
  }
}


