import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/default_wrapper.dart';
import 'package:go_router_demo/routes/gorouter/gorouter_constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    print('HomeScreen initState called');
  }

  @override
  Widget build(BuildContext context) {
    return DefaultWrapper(
      title: "Home",
      child: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text("Home page loaded"),
            TextButton(
              onPressed: () {
                context.pushNamed(GoRouterConstants.aboutPageName);
              },
              child: Text(
                'About Us',
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
