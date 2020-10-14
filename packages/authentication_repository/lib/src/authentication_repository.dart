import 'dart:async';

import 'package:meta/meta.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  //login dovrà chiamare la login e poi restituire il jwt
  Future<void> login( {
    @required String username,
    @required String password,
  } ) async {
    assert(username != null);
    assert(password != null);

    await Future.delayed(
      const Duration(milliseconds: 300),
        () => _controller.add(AuthenticationStatus.authenticated),
    );
  }

  void logout() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}