import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zama/authentication/authentication.dart';

class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'UserID: ${context.bloc<AuthenticationBloc>().state.user.userId}',
            ),
            Text(
              'Firstname: ${context.bloc<AuthenticationBloc>().state.user.firstname}',
            ),
            Text(
              'Lastname: ${context.bloc<AuthenticationBloc>().state.user.lastname}',
            ),
            Text(
              'EMail: ${context.bloc<AuthenticationBloc>().state.user.email}',
            ),
            Text(
              'Type: ${context.bloc<AuthenticationBloc>().state.user.type}',
            ),
            RaisedButton(
              child: const Text('Logout'),
              onPressed: () {
                context
                    .bloc<AuthenticationBloc>()
                    .add(AuthenticationLogoutRequested());
              },
            ),
          ],
        ),
      ),
    );
  }
}
