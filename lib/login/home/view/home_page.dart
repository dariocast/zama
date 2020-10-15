import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zama/authentication/authentication.dart';
import 'home_drawer.dart';

class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {
            context
                .bloc<AuthenticationBloc>()
                .add(AuthenticationLogoutRequested());
          },)
        ],
      ),
      drawer: HomeDrawer(currentUser: context.bloc<AuthenticationBloc>().state.user,),
      body: Center(
        child: Text(
            'Benvenuto ${context.bloc<AuthenticationBloc>().state.user.firstname}'
        ),
      ),
    );
  }
}
