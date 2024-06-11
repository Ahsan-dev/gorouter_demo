import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/default_wrapper.dart';
import 'package:go_router_demo/routes/gorouter/gorouter_constants.dart';
import 'package:go_router_demo/routes/gorouter/my_router.dart';

class AboutOne extends StatelessWidget {
  const AboutOne({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultWrapper(
      title: 'About One',
      child: AboutOneBody(),
    );
  }
}

class AboutOneBody extends StatelessWidget {
  const AboutOneBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text("About One page loaded"),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go(
                  '${GoRouterConstants.homePagePath}?key=${UniqueKey().toString()}',
                );
              },
              child: Text(
                'Go to home',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
