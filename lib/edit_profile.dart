import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          'Edit',
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
                    height: height / 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width / 10),
                    child: Column(
                      children: [
                        Container(
                          height: height / 7.5,
                          width: width / 3.1,
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
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height / 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width / 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Name',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, color: Colors.white),
                        ),
                        SizedBox(
                          height: height / 100,
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
                                color: const Color.fromARGB(255, 243, 228, 174),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  cursorColor:
                                      const Color.fromARGB(255, 124, 23, 23),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter Name',
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
                          height: height / 100,
                        ),
                        const Text(
                          'Birthdate',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, color: Colors.white),
                        ),
                        SizedBox(
                          height: height / 100,
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
                                color: const Color.fromARGB(255, 243, 228, 174),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  cursorColor:
                                      const Color.fromARGB(255, 124, 23, 23),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'DD / MM / YY',
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
                          height: height / 3.5,
                        ),
                        Container(
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
