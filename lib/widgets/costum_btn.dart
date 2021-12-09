// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

class costum_btm extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final IconData icon;

  const costum_btm(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: onPressed, icon: Icon(icon), label: Text(text));
  }
}
