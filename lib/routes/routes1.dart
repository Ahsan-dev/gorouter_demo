import 'package:flutter/material.dart';
import 'package:go_router_demo/about_one.dart';

import '../about_page.dart';
import '../home_page.dart';
import '../user_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (_) => Home(),
  '/about': (_) => About(),
  '/about-one': (_) => AboutOne(),
  '/contact': (_) => About(),
  '/user': (_) => User(),
};
