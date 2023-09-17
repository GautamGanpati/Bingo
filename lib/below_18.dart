import 'package:bingo/home.dart';
import 'package:flutter/material.dart';

class Below18 extends StatelessWidget {
  const Below18({super.key});

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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height / 11),
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
                    height: height / 14.55,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width / 24, right: width / 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: height / 3.2,
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
                                  color:
                                      const Color.fromARGB(255, 255, 209, 70),
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
                                      'Your age is',
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
                                      'Below 18',
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                            color: Color.fromARGB(
                                                255, 124, 23, 23),
                                            offset: Offset(4, 3),
                                          ),
                                        ],
                                        fontSize: 38,
                                        fontWeight: FontWeight.w900,
                                        color:
                                            Color.fromARGB(255, 223, 114, 35),
                                      ),
                                    ),
                                    SizedBox(
                                      height: height / 100,
                                    ),
                                    const Text(
                                      'Your age should be atleast 18 \nyears to participate in this game',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: Color.fromARGB(255, 124, 23, 23),
                                      ),
                                    ),
                                    SizedBox(
                                      height: height / 50,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return const Home();
                                        })));
                                      },
                                      child: Container(
                                        height: height / 14,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
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
                                                'Back',
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
            ),
          ],
        ),
      ),
    );
  }
}
