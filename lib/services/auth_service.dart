import 'dart:convert';

import 'package:bingo/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String uri = 'https://bingo-7rct.onrender.com';

class AuthService {
  void userLogin({
    required BuildContext context,
    required String mobileNumber,
  }) async {
    try {
      User user = User(
        mobileNumber: mobileNumber,
        booleanVariable: false,
        imageUrl: '',
        username: '',
        birthday: '',
        grid: [[]],
        status: '',
      );

      http.Response res = await http.post(Uri.parse('$uri/usersignup'),
          body: user.toJson({'mobileNumber': mobileNumber}),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });
          print(res.body);

          if(res.statusCode == 200) {
            final Map<String, dynamic> resData = jsonDecode(res.body);
            print(resData);
          } 
          else if(res.statusCode == 400 && context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(jsonDecode(res.body)['message'])));
          } else if(res.statusCode == 500 && context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(jsonDecode(res.body)['error'])));
          }

    } catch (e) {
      print(e.toString());
    }
  }
}
