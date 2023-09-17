import 'package:bingo/admin_uploadlogo.dart';
import 'package:bingo/profile.dart';
import 'package:bingo/setting.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: height / 24, left: width / 24, right: width / 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
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
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                        SizedBox(
                          height: height / 13.34,
                          width: width / 6.5,
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
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height / 24),
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
                  Column(
                    children: [
                      const Text(
                        'Hello adminName!',
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              color: Color.fromARGB(255, 124, 23, 23),
                              offset: Offset(-4, 0),
                            ),
                          ],
                          fontSize: 34,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 243, 228, 174),
                        ),
                      ),
                      SizedBox(
                        height: height / 80,
                      ),
                      const Text(
                        'Let\'s get started',
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
                        height: height / 40,
                      ),
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
                                  color:
                                      const Color.fromARGB(255, 255, 209, 70),
                                ),
                                borderRadius: BorderRadius.circular(15),
                                color:
                                    const Color.fromARGB(255, 243, 228, 174)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                cursorColor:
                                    const Color.fromARGB(255, 124, 23, 23),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter the youtube stream id',
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromARGB(100, 124, 23, 23),
                                  ),
                                ),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromARGB(255, 124, 23, 23),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height / 4,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const AdminUploadlogo();
                          }));
                        },
                        child: Container(
                          height: height / 11.5,
                          width: width / 1.08,
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
                                  'Next',
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
