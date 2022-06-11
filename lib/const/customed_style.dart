// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop/const/customed_colors.dart';
import 'package:shop/const/customed_size.dart';

class CustomedStyle {
  static TextStyle kheading = TextStyle(fontFamily: 'Norican', fontSize: 50);
  static ButtonStyle kgoldBtn = TextButton.styleFrom(
      primary: CustomedColors.kblack, //Text Color
      backgroundColor: CustomedColors.kgold,
      minimumSize: Size(CustomedSize.kwidth, 40));

  static ButtonStyle kroundedBtn(Color backgroundColor) => ButtonStyle(
      backgroundColor: MaterialStateProperty.all(backgroundColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: backgroundColor))));
}
