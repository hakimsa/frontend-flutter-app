// ignore_for_file: use_key_in_widget_constructors, unnecessary_const

import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(68, 15, 15, 15),
      elevation: 20,
      child: DrawerHeader(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          key: key,
          children: const [
            SizedBox(
              height: 80,
            ),
            ExpansionTile(
              title: Text("Setting"),
              children: [
                ListTile(
                  title: Text(" theme"),
                ),
                ListTile(
                  title: Text(" account"),
                ),
                ListTile(
                  title: Text(" perfile"),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
