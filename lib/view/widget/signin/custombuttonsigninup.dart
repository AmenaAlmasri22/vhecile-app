import 'package:flutter/material.dart';

class CustoBottunSignInUp extends StatefulWidget {
  const CustoBottunSignInUp({super.key, required this.path, this.onPressed});

  @override
  State<CustoBottunSignInUp> createState() => _CustoBottunSignInUpState();
  final String path;
  final void Function()? onPressed;
}

class _CustoBottunSignInUpState extends State<CustoBottunSignInUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: widget.onPressed, child: Image.asset(widget.path));
  }
}
