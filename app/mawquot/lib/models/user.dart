// Constants
// import 'package:mawquot/constants/app.dart';

class User {
  // Attributes
  late int id;
  late String name;
	late String email;
	late String password;
	late Enum gender;
	late DateTime birthDate;
	late DateTime joinDate;

  // Methods
  User({
    required this.id, 
    required this.name,
    required this.email,
    required this.password, 
    required this.gender,
    required this.birthDate,
    required this.joinDate,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    gender = json['gender'];
    birthDate = json['birthDate'];
    joinDate = json['joinDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['gender'] = gender;
    data['name'] = name;
    data['birthDate'] = birthDate;
    data['joinDate'] = joinDate;

    return data;
  }
}