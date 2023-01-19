// ignore_for_file: use_key_in_widget_constructors, must_call_super

import 'package:chaty/widgets/menu.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static const String pagename = "/";
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var height;
  var width;

  var height2;
  var width2;
  @override
  void initState() {
    height = 550.0;
    width = 50.0;
    height2 = 550.0;
    width2 = 50.0;
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
            Stack(
              children: [
                Positioned(
                  child: Text("AVATARS"),
                  top: 40,
                  left: 120,
                ),
                Container(
                  margin: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(29, 252, 252, 252)),
                  width: double.infinity,
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [conatiner1(context), conatiner2(context)],
                  ),
                ),
              ],
            )
          ],
        ));
  }

  conatiner1(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(35),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        AnimatedContainer(
            child: Container(
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
                      icon: const Icon(Icons.show_chart)),
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
      ]),
    );
  }

  conatiner2(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(35),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        AnimatedContainer(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {
                        print("ALG");
                        setState(() {
                          height2 = 550;
                          width2 = 500;
                          Clip.antiAlias;
                          Curves.bounceOut;

                          const Color.fromRGBO(25, 25, 78, 0.36);
                        });
                      },
                      icon: const Icon(Icons.show_chart)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.network(
                            "https://icons.iconarchive.com/icons/hopstarter/superhero-avatar/128/Avengers-Hawkeye-icon.png"),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        width: 150,
                        height: 150,
                        color: Colors.transparent,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              height2 = 50;
                              width2 = 500;
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
            duration: const Duration(seconds: 1),
            curve: Curves.bounceInOut,
            clipBehavior: Clip.hardEdge,
            height: height2,
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
      ]),
    );
  }
}
