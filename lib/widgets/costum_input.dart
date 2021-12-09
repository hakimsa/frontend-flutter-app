// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class costum_input extends StatelessWidget {
  late IconData icon;
  late TextEditingController textEditingController;
  late TextInputType textInputType;
  late String placeholder;
  late bool isPassword;

  costum_input(
      {Key? key,
      required this.icon,
      required this.textEditingController,
      required this.textInputType,
      required this.placeholder,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 20),
        child: TextFormField(
          controller: textEditingController,
          obscureText: isPassword,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: placeholder,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            icon: Container(
              width: 30,
              height: 30,
              child: Icon(icon),
              decoration: ShapeDecoration(
                  color: const Color.fromRGBO(205, 214, 255, 0.18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  )),
            ),
          ),
        ));
  }
}
