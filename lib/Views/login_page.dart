// ignore_for_file: camel_case_types, use_key_in_widget_constructors, avoid_print

import 'package:chaty/widgets/costum_btn.dart';
import 'package:chaty/widgets/costum_input.dart';
import 'package:chaty/widgets/logo.dart';
import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  static const String pagename = "login";

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Chaty'),
      ),
      body: Stack(
        children: [
          _background(),
          SingleChildScrollView(
            child: _loginform(context),
          ),
        ],
      ),
    );
  }

  _background() {
    return Stack(
        children: [_circulbg1(), circulbg2(), circulbg3(), circulbg4()]);
  }

  var height = 50.0;

  _circulbg1() {
    return Positioned(
        top: 80,
        left: 160,
        child: AnimatedContainer(
            duration: const Duration(seconds: 5),
            curve: Curves.bounceInOut,
            width: 160.0,
            clipBehavior: Clip.hardEdge,
            height: height,
            onEnd: () {
              setState(() {
                height = 500;
                Clip.antiAlias;
                Curves.easeIn;
              });
            },
            decoration: const BoxDecoration(
                /*image: DecorationImage(
                  image: NetworkImage(
                      'https://www.onlygfx.com/wp-content/uploads/2018/03/orange-polygonal-background-fade-3.png',
                      scale: 1),
                  fit: BoxFit.cover,
                ),*/
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(77, 77, 77, 0.35),
                  Color.fromRGBO(177, 177, 717, 0.35),
                ]),
                borderRadius: BorderRadius.all(Radius.circular(100)))));
  }

  circulbg2() {
    return Positioned(
        top: 210,
        right: 350,
        child: Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
                /*  image: DecorationImage(
                  image: NetworkImage(
                      'https://pixabay.com/get/g2c3bc9a4903d068c7732155a727ae3385dc56c0f5bfcd31f2d06ce39a09e8bfcde95b0b1dfc21606a9ea61fa62910f6fdff796f1e5fc58ef5e38a034c6a7a7b74b9892365937152c29dff591d42bb81e_1920.png',
                      scale: 1),
                  fit: BoxFit.cover,
                ),*/
                gradient:
                    LinearGradient(colors: [Colors.purpleAccent, Colors.white]),
                borderRadius: BorderRadius.all(Radius.circular(100)))));
  }

  circulbg3() {
    return Positioned(
        top: 180,
        left: 150,
        child: Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.green, Colors.white]),
                borderRadius: BorderRadius.all(Radius.circular(100)))));
  }

  circulbg4() {
    return Positioned(
        top: 80,
        left: 250,
        child: Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.blueAccent, Colors.white]),
                borderRadius: BorderRadius.all(Radius.circular(100)))));
  }

  _loginform(contex) {
    return Center(
        child: Container(
      child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              logo(),
              const SizedBox(
                height: 40,
              ),
              costum_input(
                  textInputType: TextInputType.emailAddress,
                  isPassword: false,
                  icon: Icons.person,
                  textEditingController: emailControler,
                  placeholder: "@"),
              const SizedBox(
                height: 40,
              ),
              costum_input(
                  textInputType: TextInputType.visiblePassword,
                  isPassword: true,
                  icon: Icons.lock_outlined,
                  textEditingController: passwordControler,
                  placeholder: "******"),
              const SizedBox(
                height: 50,
              ),
              costum_btm(
                  onPressed: () {
                    print(emailControler.text);
                    print(passwordControler.text);
                    Navigator.pushNamed(context, "tribu");
                  },
                  text: "login",
                  icon: Icons.accessibility_new_rounded)
            ],
          )),
      width: 500,
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 80),
      decoration: const BoxDecoration(color: Color.fromRGBO(77, 77, 77, 0.45)),
      padding: const EdgeInsets.all(20),
    ));
  }
}
