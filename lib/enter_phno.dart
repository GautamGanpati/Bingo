import 'package:bingo/enter_otp.dart';
import 'package:bingo/services/auth_service.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EnterPhNo extends StatefulWidget {
  const EnterPhNo({super.key});
  static String verify = '';

  @override
  State<EnterPhNo> createState() => _EnterPhNoState();
}

class _EnterPhNoState extends State<EnterPhNo> {
  bool adminLogin = false;
  //TextEditingController phoneController = TextEditingController();
  final userLoginFormKey = GlobalKey<FormState>();
  final adminLoginFormKey = GlobalKey<FormState>();
  String phone = '';

  // void dispse() {
  //   phoneController.dispose();
  //   super.dispose();
  // }

  Country country = Country(
    phoneCode: '91',
    countryCode: 'IN',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'India',
    example: 'India',
    displayName: 'India',
    displayNameNoCountryCode: 'IN',
    e164Key: '',
  );

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final AuthService authService = AuthService();
    final FirebaseAuth auth = FirebaseAuth.instance;

    void userSignup() async {
      // final mobileNumber = phoneController.text.trim();
      // authService.userLogin(
      //   context: context,
      //   mobileNumber: '+91$mobileNumber',
      // );
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+${country.phoneCode}$phone',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (verificationId, forceResendingToken) {
          verificationId = EnterPhNo.verify;
          Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
            return  const EnterOtp();
          })));
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width / 24),
                        child: const Text(
                          'Join the game',
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
                        padding: EdgeInsets.only(
                            left: width / 24, right: width / 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                height: height / 11.5,
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
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Container(
                                          padding: EdgeInsets.all(width / 45),
                                          child: InkWell(
                                            onTap: () {
                                              showCountryPicker(
                                                  countryListTheme:
                                                      CountryListThemeData(
                                                          bottomSheetHeight:
                                                              height / 1.8),
                                                  context: context,
                                                  onSelect: (value) {
                                                    setState(() {
                                                      country = value;
                                                    });
                                                  });
                                            },
                                            child: Text(
                                              '${country.countryCode} + ${country.phoneCode}',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w900,
                                                color: Color.fromARGB(
                                                    255, 124, 23, 23),
                                              ),
                                            ),
                                          ),
                                        )),
                                        // SizedBox(
                                        //   width: width / 72,
                                        // ),
                                        // Expanded(
                                        //   child: TextFormField(
                                        //     initialValue: '+91',
                                        //     style: const TextStyle(
                                        //       fontSize: 16,
                                        //       fontWeight: FontWeight.w900,
                                        //       color: Color.fromARGB(
                                        //           255, 124, 23, 23),
                                        //     ),
                                        //     cursorColor: const Color.fromARGB(
                                        //         255, 124, 23, 23),
                                        //     decoration: const InputDecoration(
                                        //       border: InputBorder.none,
                                        //     ),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width / 72,
                            ),
                            Container(
                              height: height / 11.5,
                              width: width / 1.5,
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
                                    child: Form(
                                      key: adminLogin
                                          ? adminLoginFormKey
                                          : userLoginFormKey,
                                      child: TextFormField(
                                        onChanged: (value) {
                                          phone = value;
                                        },
                                        validator: (value) {
                                          if (value == null ||
                                              value.length > 10 ||
                                              value.length < 10) {
                                            return "Enter Valid Number";
                                          } else {
                                            return null;
                                          }
                                        },
                                        keyboardType: TextInputType.phone,
                                        //controller: phoneController,
                                        cursorColor: const Color.fromARGB(
                                            255, 124, 23, 23),
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Enter phone no.',
                                          hintStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                            color: Color.fromARGB(
                                                100, 124, 23, 23),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 16,
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
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height / 53.34,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width / 24),
                            child: const Text(
                              'We will send you an OTP on the phone no. \nmentioned above',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 243, 228, 174),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 40,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width / 24),
                        child: Row(
                          children: [
                            Container(
                              height: height / 20,
                              width: width / 9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color.fromARGB(255, 124, 23, 23),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: width / 50, bottom: height / 120),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 5,
                                        color: const Color.fromARGB(
                                            255, 255, 209, 70),
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color.fromARGB(
                                          255, 243, 228, 174)),
                                  child: Radio(
                                    value: () {},
                                    groupValue: () {},
                                    onChanged: (value) {},
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width / 45,
                            ),
                            const Text(
                              'Keep me Signed in',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 243, 228, 174),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height / 80,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width / 24),
                        child: Row(
                          children: [
                            Container(
                              height: height / 20,
                              width: width / 9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color.fromARGB(255, 124, 23, 23),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: width / 50, bottom: height / 120),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 5,
                                        color: const Color.fromARGB(
                                            255, 255, 209, 70),
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color.fromARGB(
                                          255, 243, 228, 174)),
                                  child: Checkbox(
                                    activeColor:
                                        const Color.fromARGB(255, 124, 23, 23),
                                    value: adminLogin,
                                    onChanged: (bool? val) {
                                      setState(() {
                                        adminLogin = true;
                                        adminLogin = val!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width / 45,
                            ),
                            const Text(
                              'Signing in as admin',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 243, 228, 174),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height / 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width / 24,
                            right: width / 24,
                            bottom: height / 80),
                        child: GestureDetector(
                          onTap: () {
                            if (userLoginFormKey.currentState!.validate()) {
                              userSignup();
                            }
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
                                    color:
                                        const Color.fromARGB(255, 124, 23, 23),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 255, 209, 70),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          color:
                                              Color.fromARGB(255, 124, 23, 23),
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
