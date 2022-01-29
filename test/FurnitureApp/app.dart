import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data/Constants.dart';
import 'home/home_screen.dart';


void main(){
  runApp(FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({Key? key}) : super(key: key);

  /**
   * MaterialApp 그리기.
   *
   * 1) 타이틀
   * 2) 디버그시 우측 상단 밴드 표시 하지않음.
   * 3) Theme - 텍스트, 앱바, scaffold background.
   * 4) visualDenscity
   * 5) 홈스크린.
   */
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
