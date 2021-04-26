import 'dart:convert';

class UserModel {
  final String name;
  final String photo_url;
  final int score;

  UserModel({required this.name, required this.photo_url, this.score = 0});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      photo_url: map['photo_url'],
      score: map['score'],
    );
  }

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
