import 'dart:convert';

class User {
  int? id;
  String? fullname;
  String? username;
  String? password;
  String? email;

  User({this.id, this.fullname, this.password, this.username, this.email});

  static List<User> parseList(response) {
    var list = json.decode(response.body) as List;
    return list.map((item) => User.fromJson(item)).toList();
  }

  factory User.fromJson(Map<String, dynamic> json) => User(
      id: json['AccountId'],
      fullname: json['FullName'],
      username: json['UserName'],
      email: json['Email'],
  );
}
