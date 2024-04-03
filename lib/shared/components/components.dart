
import 'dart:math';

import 'package:bmi_calculator/modules/result/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget button({
  required int weight,
  required int height,
  required context
})=>Container(
  height: 50,
  width: 200,
  child: MaterialButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
    onPressed: () {
      var result = weight / pow(height / 100, 2);
      print(result);
      if (weight != 0 || height != 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => result_screen(
              result: result.round(),
            ),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please fill in the form fields'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    },
    child: Text(
      'Calculate Your BMI',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(60),
    gradient: LinearGradient(
      colors: [
        Colors.cyan,
        Color(0xFFa0f0bb),
        Color(0xFF8ff4e4),
      ],
    ),
  ),
);