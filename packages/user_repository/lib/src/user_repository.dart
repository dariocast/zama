import 'dart:async';

import 'models/models.dart';

class UserRepository {
  User _user;

  //qui devo dargli il token e chiamare la validate token dal backend
  Future<User> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 300),
        () => _user = User(),
    );
  }
}