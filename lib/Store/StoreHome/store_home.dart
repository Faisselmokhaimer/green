import 'package:flutter/material.dart';
import 'package:green_business/Store/StoreHome/Components/body.dart';
class HomeScreenStore extends StatelessWidget {
  const HomeScreenStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
    );
  }
}
