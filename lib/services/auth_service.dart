import 'dart:convert';

import 'package:bingo/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String uri = 'http://10.100.149.135:5000';

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
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=utf-8',
          });
          print(res.body);

          if(res.statusCode == 200) {
            final Map<String, dynamic> responseData = jsonDecode(res.body);
            print(responseData);
          } else if(res.statusCode == 400) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(jsonDecode(res.body)['message'])));
          } else if(res.statusCode == 500) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(jsonDecode(res.body)['error'])));
          }

    } catch (e) {
      print(e.toString());
    }
  }
}
