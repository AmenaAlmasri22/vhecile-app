// ignore_for_file: unused_import

import 'package:ecommercecourse/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final Widget? prefixIcon;
  final void Function()? onTapIcon;

  const CustomTextFormAuth(
      {Key? key,
      this.obscureText,
      this.onTapIcon,
      required this.hinttext,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
      required this.isNumber,
      this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.ltr,
      keyboardType: isNumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      validator: valid,
      controller: mycontroller,
      obscureText: obscureText == null || obscureText == false ? false : true,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.only(right: 0, bottom: 20),
        hintText: hinttext,
        prefixIcon: Padding(
            padding: const EdgeInsets.only(bottom: 20), child: prefixIcon),
        isDense: true,
        hintStyle: const TextStyle(
            fontFamily: 'Vazirmatn-Regular', color: Colors.black),
        hintTextDirection: TextDirection.rtl,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: InkWell(
              onTap: onTapIcon,
              child: Icon(iconData,
                  weight: 10,
                  color: const Color.fromARGB(255, 234, 80, 63),
                  size: 20)),
        ),
      ),
    );
  }
}
