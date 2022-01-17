import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/Constants.dart';
import '../data/SizeConfig.dart';
import 'Body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: const Body(),
      appBar: buildAppBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            height: SizeConfig.defaultSize! * 2.0,
          ),
          onPressed: () {}),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/scan.svg",
              height: SizeConfig.defaultSize! * 2.4,
            )),
        const Center(
          child: Text(
            "Scan",
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: SizeConfig.defaultSize)
      ],
    );
  }
}