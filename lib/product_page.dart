import 'package:flutter/material.dart';
import 'package:go_router_demo/default_wrapper.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return DefaultWrapper(
      title: 'Product: $name',
      child: ProductPageBody(),
    );
  }
}

class ProductPageBody extends StatelessWidget {
  const ProductPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Product page loaded"),
      ),
    );
  }
}
