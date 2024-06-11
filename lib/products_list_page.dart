import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/default_wrapper.dart';
import 'package:go_router_demo/routes/gorouter/gorouter_constants.dart';

class ProductsListPage extends StatelessWidget {
  const ProductsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultWrapper(
      title: 'Products List',
      child: ProductsListPageBody(),
    );
  }
}

class ProductsListPageBody extends StatelessWidget {
  const ProductsListPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text("Products list page loaded"),
            TextButton(
              onPressed: () {
                context.push(
                  '${GoRouterConstants.productsPagePath}/${GoRouterConstants.productPagePath}/Watch',
                );
              },
              child: Text(
                'Watch',
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
