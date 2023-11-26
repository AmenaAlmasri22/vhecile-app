// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class CustomTextApp extends StatelessWidget {
  final String text;
  final bool? colortext;
  const CustomTextApp({super.key, required this.text, required this.colortext});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Text(
      text,
      textDirection: TextDirection.rtl,
      style: TextStyle(
          fontFamily: 'Vazirmatn-Regular',
          color: colortext == false
              ? Colors.black
              : const Color.fromARGB(255, 234, 80, 63),
          fontSize: 15),
    );
  }
}
