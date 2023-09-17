import 'package:bingo/game.dart';
import 'package:bingo/help.dart';
import 'package:bingo/profile.dart';
import 'package:bingo/setting.dart';
import 'package:flutter/material.dart';

class HomeEnterGame extends StatefulWidget {
  const HomeEnterGame({super.key});

  @override
  State<HomeEnterGame> createState() => _HomeEnterGameState();
}

class _HomeEnterGameState extends State<HomeEnterGame> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    radius: 1,
                    colors: [
                      Color.fromARGB(245, 72, 98, 189),
                      Color.fromARGB(245, 19, 40, 114),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: width / 24, top: height / 53.34),
                  child: SizedBox(
                    height: height / 13.34,
                    width: width / 2.8,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 124, 23, 23),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: width / 70, bottom: height / 140),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 5,
                              color: const Color.fromARGB(255, 255, 209, 70),
                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 243, 228, 174),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: width / 72),
                              ),
                              Container(
                                height: height / 22.85,
                                width: width / 11,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 124, 23, 23),
                                ),
                              ),
                              SizedBox(
                                width: width / 35,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const Profile();
                                  }));
                                },
                                child: const Text(
                                  'Dhruvil',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromARGB(255, 124, 23, 23),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(right: width / 24, top: height / 53.34),
                  child: SizedBox(
                    height: height / 5.55,
                    width: width / 6.5,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 124, 23, 23),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: width / 70, bottom: height / 140),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color:
                                      const Color.fromARGB(255, 255, 209, 70),
                                ),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 243, 228, 174),
                              ),
                              child: IconButton(
                                padding: const EdgeInsets.symmetric(),
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const Setting();
                                  }));
                                },
                                icon: const Icon(
                                  Icons.settings_outlined,
                                  color: Color.fromARGB(255, 124, 23, 23),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height / 100,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 124, 23, 23),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: width / 70, bottom: height / 140),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color:
                                      const Color.fromARGB(255, 255, 209, 70),
                                ),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 243, 228, 174),
                              ),
                              child: IconButton(
                                padding: const EdgeInsets.symmetric(),
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const Help();
                                  }));
                                },
                                icon: const Icon(
                                  Icons.info_outline,
                                  size: 28,
                                  color: Color.fromARGB(255, 124, 23, 23),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height / 8),
                      child: Container(
                        height: height / 6.5,
                        width: width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/bingo_img.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 18,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width / 24, right: width / 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height / 1.75,
                        width: width / 1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 124, 23, 23),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: width / 35, bottom: height / 80),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 5,
                                color: const Color.fromARGB(255, 255, 209, 70),
                              ),
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 243, 228, 174),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: height / 40,
                                  bottom: height / 80,
                                  left: width / 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Bingo game \nStarting in',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: Color.fromARGB(255, 124, 23, 23),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height / 120,
                                  ),
                                  const Text(
                                    '5 mins',
                                    style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          color:
                                              Color.fromARGB(255, 124, 23, 23),
                                          offset: Offset(4, 3),
                                        ),
                                      ],
                                      fontSize: 38,
                                      fontWeight: FontWeight.w900,
                                      color: Color.fromARGB(255, 223, 114, 35),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height / 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: width / 40),
                                    child: Container(
                                      height: height / 4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color.fromARGB(
                                            255, 124, 23, 23),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: width / 35, top: height / 80),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 5,
                                              color: const Color.fromARGB(
                                                  255, 124, 23, 23),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color.fromARGB(
                                                255, 255, 209, 70),
                                          ),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: width / 20,
                                                    top: height / 20),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      '3,786/5,000',
                                                      style: TextStyle(
                                                        shadows: [
                                                          Shadow(
                                                            color:
                                                                Color.fromARGB(
                                                              255,
                                                              124,
                                                              23,
                                                              23,
                                                            ),
                                                            offset:
                                                                Offset(2, 2),
                                                          ),
                                                        ],
                                                        fontSize: 28,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        color: Color.fromARGB(
                                                            255, 223, 114, 35),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: height / 160,
                                                    ),
                                                    const Text(
                                                      'People',
                                                      style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        color: Color.fromARGB(
                                                            255, 124, 23, 23),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: height / 160,
                                                    ),
                                                    const Text(
                                                      'Has entered the game',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        color: Color.fromARGB(
                                                            255, 124, 23, 23),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height / 28,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return const Game();
                                      }));
                                    },
                                    child: Container(
                                      height: height / 14,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: const Color.fromARGB(
                                            255, 124, 23, 23),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            right: width / 35,
                                            bottom: height / 80),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 5,
                                              color: const Color.fromARGB(
                                                  255, 124, 23, 23),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color.fromARGB(
                                                255, 255, 209, 70),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Enter the Game',
                                              style: TextStyle(
                                                shadows: [
                                                  Shadow(
                                                    color: Color.fromARGB(
                                                        255, 124, 23, 23),
                                                    offset: Offset(5, 5),
                                                    blurRadius: 40,
                                                  ),
                                                ],
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900,
                                                color: Color.fromARGB(
                                                    255, 124, 23, 23),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
