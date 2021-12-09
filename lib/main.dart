import 'package:flutter/material.dart';
import 'Roots/root.dart';
import 'Views/login_page.dart';

void main() {
  runApp(const Chaty());
}

class Chaty extends StatelessWidget {
  const Chaty({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chaty',
      theme: ThemeData(
          brightness: Brightness.dark, primaryColorDark: Colors.green),
      //  roots of your application.
      routes: getaplicationroute(),
      initialRoute: Login_page.pagename,
    );
  }
}
