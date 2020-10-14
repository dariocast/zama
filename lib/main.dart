import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';
import 'package:zama/zama_app.dart';

void main() {
  runApp(ZamaApp(
    authenticationRepository: AuthenticationRepository(),
    userRepository: UserRepository(),
  ));
}