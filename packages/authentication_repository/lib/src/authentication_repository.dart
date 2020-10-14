import 'dart:async';

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationOutput {
  final AuthenticationStatus status;
  final String jwt;

  AuthenticationOutput(this.status, this.jwt);
}
const String loginUrl = 'https://dariocast.altervista.org/zama/api/login.php';

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationOutput>();

  Stream<AuthenticationOutput> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationOutput(AuthenticationStatus.unauthenticated, null);
    yield* _controller.stream;
  }

  Future<void> login( {
    @required String username,
    @required String password,
  } ) async {
    assert(username != null);
    assert(password != null);

    Response response;
    Dio dio = new Dio();
    try {
      response = await dio.post(loginUrl, data: {"email": username, "password": password});
      response.statusCode == 200
          ? _controller.add(
          AuthenticationOutput(
              AuthenticationStatus.authenticated,
              response.data['data']['access_token']
          ))
          : _controller.add(
          AuthenticationOutput(
              AuthenticationStatus.unauthenticated,
              null
          ));
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

  void logout() {
    _controller.add(AuthenticationOutput(
        AuthenticationStatus.unauthenticated,
        null
    ));
  }

  void dispose() => _controller.close();
}