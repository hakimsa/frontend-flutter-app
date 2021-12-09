// ignore_for_file: use_key_in_widget_constructors

import 'package:chaty/widgets/costum_btn.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static const String pagename = "tribu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          key: key,
          child: costum_btm(
            icon: Icons.access_alarm_sharp,
            text: "Go",
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
          ),
        ),
      ),
    );
  }
}
