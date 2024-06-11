import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/default_wrapper.dart';
import 'package:go_router_demo/routes/gorouter/gorouter_constants.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultWrapper(
      title: 'About Us',
      child: AboutPageBody(),
    );
  }
}

class AboutPageBody extends StatelessWidget {
  const AboutPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text("About Us page loaded"),
            TextButton(
              onPressed: () {
                context.pushNamed(GoRouterConstants.aboutOnePageName);
              },
              child: Text(
                'About One',
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
