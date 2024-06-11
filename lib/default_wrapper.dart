import 'package:flutter/material.dart';

class DefaultWrapper extends StatelessWidget {
  const DefaultWrapper(
      {super.key, required this.child, this.showTopBar = true, this.title});

  final Widget child;
  final bool showTopBar;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showTopBar == true
          ? AppBar(
              backgroundColor: Colors.blue,
              title: Text(
                "${title}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          : null,
      body: Container(
        child: child,
      ),
    );
  }
}
