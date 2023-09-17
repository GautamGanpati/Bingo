import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: width / 10, top: height / 25),
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
                        padding:
                            EdgeInsets.only(left: width / 30, top: height / 24),
                        child: const Text(
                          'Setting',
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                color: Color.fromARGB(255, 124, 23, 23),
                                offset: Offset(-4, 0),
                              ),
                            ],
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 243, 228, 174),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height / 26.67,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width / 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: height / 10,
                              width: width / 1.2,
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
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Sound',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                            color: Color.fromARGB(
                                                255, 124, 23, 23),
                                          ),
                                        ),
                                        Radio(
                                          value: () {},
                                          groupValue: () {},
                                          onChanged: (value) {},
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height / 16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width / 10),
                        child: const Text(
                          'Prefered Language',
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
                      ),
                      SizedBox(
                        height: height / 53.34,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width / 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: height / 12,
                              width: width / 1.2,
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
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'English',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                            color: Color.fromARGB(
                                                255, 124, 23, 23),
                                          ),
                                        ),
                                        Radio(
                                          value: () {},
                                          groupValue: () {},
                                          onChanged: (value) {},
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height / 80,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width / 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: height / 12,
                              width: width / 1.2,
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
                                          255, 243, 228, 174)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Arabic',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                            color: Color.fromARGB(
                                                255, 124, 23, 23),
                                          ),
                                        ),
                                        Radio(
                                          value: () {},
                                          groupValue: () {},
                                          onChanged: (value) {},
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height / 4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width / 10,
                            right: width / 24,
                            bottom: height / 80),
                        child: Container(
                          height: height / 12,
                          width: width / 1.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 124, 23, 23),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: width / 35, bottom: height / 80),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color: const Color.fromARGB(255, 124, 23, 23),
                                ),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 255, 209, 70),
                              ),
                              child: const Center(
                                child: Text(
                                  'Save',
                                  style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        color: Color.fromARGB(255, 124, 23, 23),
                                        offset: Offset(5, 5),
                                        blurRadius: 40,
                                      ),
                                    ],
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromARGB(255, 124, 23, 23),
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
            ),
          ],
        ),
      ),
    );
  }
}
