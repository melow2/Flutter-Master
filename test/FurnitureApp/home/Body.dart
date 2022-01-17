import 'package:flutter/material.dart';

import '../component/TitleText.dart';
import '../data/SizeConfig.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(title: "Browse by Categories"),
          ),
        ],
      ),
    );
  }
}
