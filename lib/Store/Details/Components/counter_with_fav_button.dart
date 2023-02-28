import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'cart_counter.dart';

// ignore: must_be_immutable
class CounterWithFavBtn extends StatefulWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterWithFavBtn> createState() => _CounterWithFavBtnState();
}

class _CounterWithFavBtnState extends State<CounterWithFavBtn> {
  int numOfLikes = 120;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        const CartCounter(),

        LikeButton(
          size: 40.0,
          likeCount: numOfLikes,
          countPostion: CountPostion.right,
          likeBuilder: (isTapped) {
            return Icon(
              Icons.favorite,
              color: isTapped ? Colors.red : Colors.grey,
              size: 40.0,
            );
          },
        ),
      ],
    );
  }
}