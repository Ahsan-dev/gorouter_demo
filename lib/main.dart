import 'package:flutter/material.dart';
import 'package:go_router_demo/about_page.dart';
import 'package:go_router_demo/home_page.dart';
import 'package:go_router_demo/routes/gorouter/my_router.dart';
import 'package:go_router_demo/routes/routes1.dart';
import 'package:go_router_demo/user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Let's Go Router",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      routerConfig: myRouter,
    );
  }
}

