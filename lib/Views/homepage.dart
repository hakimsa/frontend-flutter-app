// ignore_for_file: use_key_in_widget_constructors, must_call_super

import 'package:chaty/widgets/menu.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static const String pagename = "/";
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var height = 50.0;
  var width = 550.0;
  var height2 = 50.0;
  var width2 = 550.0;
  @override
  void initState() {
    height = 550.0;
    width = 50.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          title: const Text('Home '),
        ),
        body: ListView(
          children: [
            conatiner1(context),
          ],
        ));
  }

  conatiner1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      AnimatedContainer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        height = 550;
                        width = 500;
                        Clip.antiAlias;
                        Curves.bounceOut;

                        const Color.fromRGBO(25, 25, 78, 0.36);
                      });
                    },
                    icon: const Icon(Icons.emoji_nature)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.network(
                          "https://icons.iconarchive.com/icons/afterglow/forum-faces-2/128/Gamer-icon.png"),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      width: 150,
                      height: 150,
                      color: Colors.transparent,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            height = 50;
                            width = 500;
                            Clip.antiAlias;
                            Curves.bounceOut;

                            const Color.fromRGBO(25, 25, 78, 0.36);
                          });
                        },
                        icon: const Icon(Icons.close)),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 300,
                      height: 100,
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(25, 25, 78, 0.36),
                          offset: Offset(-12, 12),
                          blurRadius: 8,
                        ),
                      ], color: Color.fromRGBO(25, 25, 78, 0.36)),
                      child: Column(
                        children: const [Text("Soldado potencia 254xp ,  ")],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          duration: const Duration(seconds: 3),
          curve: Curves.bounceInOut,
          clipBehavior: Clip.hardEdge,
          height: height,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF101012),
                  offset: Offset(-12, 12),
                  blurRadius: 8,
                ),
              ],
              image: DecorationImage(
                image: NetworkImage(
                  'https://www.onlygfx.com/wp-content/uploads/2018/03/orange-polygonal-background-fade-3.png',
                ),
                fit: BoxFit.cover,
              ),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(77, 77, 77, 0.35),
                Color.fromRGBO(77, 77, 77, 0.35),
              ]),
              borderRadius: BorderRadius.all(Radius.circular(100)))),
    ]);
  }
}
