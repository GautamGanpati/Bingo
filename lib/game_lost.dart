import 'package:bingo/profile.dart';
import 'package:flutter/material.dart';

class GameLost extends StatefulWidget {
  const GameLost({super.key});

  @override
  State<GameLost> createState() => _GameLostState();
}

class _GameLostState extends State<GameLost> {
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
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: width / 20, top: height / 25),
                        child: SizedBox(
                          height: height / 14,
                          width: width / 6,
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
                                    color:
                                        const Color.fromARGB(255, 255, 209, 70),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 243, 228, 174),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.arrow_back_ios,
                                      color: Color.fromARGB(255, 124, 23, 23),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: width / 20, top: height / 25),
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
                                    color:
                                        const Color.fromARGB(255, 255, 209, 70),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 243, 228, 174),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width / 72),
                                    ),
                                    Container(
                                      height: height / 22.85,
                                      width: width / 11,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromARGB(
                                            255, 124, 23, 23),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width / 35,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const Profile();
                                        }));
                                      },
                                      child: const Text(
                                        'Dhruvil',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900,
                                          color:
                                              Color.fromARGB(255, 124, 23, 23),
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
                  SizedBox(
                    height: height / 80,
                  ),
                  Column(
                    children: [
                      Container(
                        height: height / 4,
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
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 255, 162, 41),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Youtube live \n  video here',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      color: Color.fromARGB(255, 124, 23, 23),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 100,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width / 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        4,
                        (index) {
                          return Padding(
                            padding: EdgeInsets.only(right: width / 72),
                            child: Container(
                              height: height / 12.3,
                              width: width / 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 124, 23, 23),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: width / 80, bottom: height / 100),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: const Color.fromARGB(
                                          255, 255, 244, 189),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    color:
                                        const Color.fromARGB(255, 255, 212, 69),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w900,
                                        color: Color.fromARGB(255, 124, 23, 23),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 100,
                  ),
                  Column(
                    children: [
                      Container(
                        height: height / 2.3,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height / 80,
                                ),
                                Container(
                                  height: height / 3,
                                  width: width / 1.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color:
                                        const Color.fromARGB(255, 124, 23, 23),
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
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color.fromARGB(
                                            255, 255, 209, 70),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Better Luck \n Next Time',
                                            style: TextStyle(
                                              shadows: [
                                                Shadow(
                                                  color: Color.fromARGB(
                                                    255,
                                                    124,
                                                    23,
                                                    23,
                                                  ),
                                                  offset: Offset(2, 2),
                                                ),
                                              ],
                                              fontSize: 28,
                                              fontWeight: FontWeight.w900,
                                              color: Color.fromARGB(
                                                  255, 223, 114, 35),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height / 80,
                                          ),
                                          const Text(
                                            'Someone else won  \n  tonight\'s game!!',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                              color: Color.fromARGB(
                                                  255, 124, 23, 23),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
