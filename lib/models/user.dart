// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  final String mobileNumber;
  final bool booleanVariable;
  final String imageUrl;
  final String username;
  final String birthday;
  final List<List> grid;
  final String status;

  User({
    required this.mobileNumber,
    required this.booleanVariable,
    required this.imageUrl,
    required this.username,
    required this.birthday,
    required this.grid,
    required this.status,
});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mobileNumber': mobileNumber,
      'booleanVariable': booleanVariable,
      'imageUrl': imageUrl,
      'username': username,
      'birthday': birthday,
      'grid': grid,
      'status': status,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      mobileNumber: map['mobileNumber'] ?? '',
      booleanVariable: map['booleanVariable'] ?? false,
      imageUrl: map['imageUrl'] ?? '',
      username: map['username'] ?? '',
      birthday: map['birthday'] ?? '',
      grid: map['grid'] ?? [[]],
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
