import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';

class HomeDrawer extends StatelessWidget {
  final User currentUser;

  const HomeDrawer({Key key, this.currentUser}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: currentUser != null
                ? Text(currentUser.firstname + ' ' + currentUser.lastname)
                : null,
            accountEmail: currentUser != null
                ? Text(currentUser.email)
                : null,
          )
        ],
      ),
    );
  }

}