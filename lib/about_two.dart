import 'package:flutter/material.dart';
import 'package:go_router_demo/default_wrapper.dart';

class AboutTwo extends StatelessWidget {
  const AboutTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultWrapper(
      title: 'About Two',
      child: AboutTwoBody(),
    );
  }
}

class AboutTwoBody extends StatelessWidget {
  const AboutTwoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("About Two page loaded"),
      ),
    );
  }
}
