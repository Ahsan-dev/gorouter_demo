import 'package:flutter/material.dart';
import 'package:go_router_demo/default_wrapper.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultWrapper(
      title: 'User',
      child: UserBody(),
    );
  }
}

class UserBody extends StatelessWidget {
  const UserBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("User page loaded"),
      ),
    );
  }
}
