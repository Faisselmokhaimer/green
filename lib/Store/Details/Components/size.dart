import 'package:flutter/material.dart';
import 'package:green_business/Store/constants.dart';
import 'package:green_business/Store/models/products.dart';


class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key ? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(text: "Size\n"),
                TextSpan(
                  text: "${product.size} cm",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}