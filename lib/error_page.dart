import 'package:flutter/material.dart';
import 'package:go_router_demo/default_wrapper.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key,
    this.error,
  });

  final String? error;

  @override
  Widget build(BuildContext context) {
    return DefaultWrapper(
      child: Center(
        child: Column(
          children: [
            Text(
              "Error occurred!",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              "Error: $error",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
