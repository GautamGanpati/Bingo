import 'package:bingo/account_details.dart';
import 'package:flutter/material.dart';

class AdminGenerateno extends StatefulWidget {
  const AdminGenerateno({super.key});

  @override
  State<AdminGenerateno> createState() => _AdminGeneratenoState();
}

class _AdminGeneratenoState extends State<AdminGenerateno> {
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
                      SizedBox(
                        height: height / 20,
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
                                    color:
                                        const Color.fromARGB(255, 255, 209, 70),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 243, 228, 174),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color.fromARGB(
                                          255, 255, 162, 41),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Youtube live \n  video here',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900,
                                          color:
                                              Color.fromARGB(255, 124, 23, 23),
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
                        height: height / 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Click below button to generate \n                     number',
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  color: Color.fromARGB(255, 124, 23, 23),
                                  offset: Offset(-4, 0),
                                ),
                              ],
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 243, 228, 174),
                            ),
                          ),
                          SizedBox(
                            height: height / 53.34,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width / 24),
                            child: Container(
                              height: height / 6,
                              width: width / 3,
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
                                      color: const Color.fromARGB(
                                          255, 255, 209, 70),
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color.fromARGB(
                                        255, 243, 228, 174),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: ((context) {
                                        return const AccountDetails();
                                      })));
                                    },
                                    child: const Text(
                                      'Generate no+',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: Color.fromARGB(155, 124, 23, 23),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
