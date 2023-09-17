import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

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
            Column(
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
                                color: const Color.fromARGB(255, 243, 228, 174),
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
                        'Help',
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
                  height: height / 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height / 2,
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
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Title',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 124, 23, 23),
                                  ),
                                ),
                                SizedBox(
                                  height: height / 40,
                                ),
                                const Text(
                                  'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 124, 23, 23),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
