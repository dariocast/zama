import 'package:equatable/equatable.dart';

class User extends Equatable {
  String userId;
  String firstname;
  String lastname;
  String email;
  String type;
  String token;

  User({this.userId, this.firstname, this.lastname, this.email, this.type});

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
      userId: responseData['id'],
      firstname: responseData['firstname'],
      lastname: responseData['lastname'],
      email: responseData['email'],
      type: responseData['type'],
    );
  }


  @override
  List<Object> get props => [userId, firstname, lastname, email, type, token];}