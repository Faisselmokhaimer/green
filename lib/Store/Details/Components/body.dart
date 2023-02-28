import 'package:flutter/material.dart';
import 'package:green_business/Store/Details/Components/add_to_cart.dart';
import 'package:green_business/Store/Details/Components/counter_with_fav_button.dart';
import 'package:green_business/Store/Details/Components/description.dart';
import 'package:green_business/Store/Details/Components/product_tile_with_imge.dart';
import 'package:green_business/Store/Details/Components/size.dart';
import 'package:green_business/Store/constants.dart';
import 'package:green_business/Store/models/products.dart';


class Body extends StatelessWidget {
  final Product product;

  const Body({Key ? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      const CounterWithFavBtn(),
                      const SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
