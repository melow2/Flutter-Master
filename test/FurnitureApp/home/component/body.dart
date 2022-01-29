import 'package:flutter/material.dart';

import '../../data/SizeConfig.dart';
import '../../widget/title_text.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
      child: Column(
        children:  [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: const TitleText(
              title: 'Browse by Categories',
            ),
          )
        ],
      ),
    );
  }
}
