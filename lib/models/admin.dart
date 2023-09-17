// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Admin {
  final String mobileNumber;
  final String gameStatus;

  Admin({
    required this.mobileNumber,
    required this.gameStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mobileNumber': mobileNumber,
      'gameStatus': gameStatus,
    };
  }

  factory Admin.fromMap(Map<String, dynamic> map) {
    return Admin(
      mobileNumber: map['mobileNumber'] ?? '',
      gameStatus: map['gameStatus'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Admin.fromJson(String source) =>
      Admin.fromMap(json.decode(source) as Map<String, dynamic>);
}
