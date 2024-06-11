import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/about_one.dart';
import 'package:go_router_demo/about_page.dart';
import 'package:go_router_demo/about_two.dart';
import 'package:go_router_demo/contact_us_page.dart';
import 'package:go_router_demo/error_page.dart';
import 'package:go_router_demo/home_page.dart';
import 'package:go_router_demo/product_page.dart';
import 'package:go_router_demo/products_list_page.dart';
import 'package:go_router_demo/routes/gorouter/gorouter_constants.dart';
import 'package:go_router_demo/user_page.dart';

// class MyAppRouter {
//   GoRouter get myRouter => _myRouter;
//   MyAppRouter();
//
// }

GoRouter myRouter = GoRouter(
  routes: [
    GoRoute(
      name: GoRouterConstants.homePageName,
      path: GoRouterConstants.homePagePath,
      builder: (_, state) {
        return Home(key: UniqueKey(),);
      },
    ),
    GoRoute(
      name: GoRouterConstants.aboutPageName,
      path: GoRouterConstants.aboutPagePath,
      builder: (_, state) {
        return About();
      },
      routes: [
        GoRoute(
          name: GoRouterConstants.aboutOnePageName,
          path: GoRouterConstants.aboutOnePagePath,
          builder: (_, state) {
            return AboutOne();
          },
        ),
        GoRoute(
          name: GoRouterConstants.aboutTwoPageName,
          path: GoRouterConstants.aboutTwoPagePath,
          builder: (_, state) {
            return AboutTwo();
          },
        ),
      ],
    ),
    GoRoute(
      name: GoRouterConstants.contactUsPageName,
      path: GoRouterConstants.contactUsPagePath,
      builder: (_, state) {
        return ContactUs();
      },
    ),
    GoRoute(
      name: GoRouterConstants.userPageName,
      path: GoRouterConstants.userPagePath,
      builder: (_, state) {
        return User();
      },
    ),
    GoRoute(
      name: GoRouterConstants.productsPageName,
      path: GoRouterConstants.productsPagePath,
      builder: (_, state) {
        return ProductsListPage();
      },
      routes: [
        GoRoute(
          name: GoRouterConstants.productPageName,
          path: '${GoRouterConstants.productPagePath}/:name',
          builder: (_, state) {
            return ProductPage(name: state.pathParameters['name']!,);
          },
        )
      ]
    ),
  ],
  initialLocation: '/',
  errorBuilder: (_, state) {
    return ErrorPage(error: state.error?.message,);
  },
);

extension GoRouterExtension on GoRouter {
  void removeUntil(String path) {
    while(canPop() && myRouter.routerDelegate.currentConfiguration.fullPath != path) {
      pop();
    }
  }

  void removeUntilAndPushReplace(String path, {Object? extra}) {
    removeUntil(path);
    pushReplacement(path, extra: extra);
  }
}
