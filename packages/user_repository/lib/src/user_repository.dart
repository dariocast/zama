import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';

import 'models/models.dart';

const String validateTokenUrl = 'https://dariocast.altervista.org/zama/api/validate_token.php';

class UserRepository {
  User _user;

  //qui devo dargli il token e chiamare la validate token dal backend
  Future<User> getUser(String jwt) async {
    if (_user != null) return _user;
    Response response;
    Dio dio = new Dio();
    try {
      response = await dio.post(validateTokenUrl, data: {"jwt": jwt});
      _user = User.fromJson(response.data['data']);
      _user.token = jwt;
    } on DioError catch(e) {
      if(e.response != null) {
        print(e.response.data);
        print(e.response.headers);
        print(e.response.request);
      } else{
        // Something happened in setting up or sending the request that triggered an Error
        print(e.request);
        print(e.message);
      }
    }
  }
}