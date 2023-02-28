import 'package:flutter/material.dart';
import 'package:green_business/Store/Details/Components/body.dart';
import 'package:green_business/Store/models/products.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key ? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}