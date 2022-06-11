// ignore_for_file: depend_on_referenced_packages, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop/const/customed_colors.dart';
import 'package:shop/const/customed_size.dart';
import 'package:shop/const/customed_style.dart';

class GoBackTopLeftBtn extends StatelessWidget {
  const GoBackTopLeftBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Icon(FontAwesomeIcons.arrowLeft, color: CustomedColors.kblack),
          style: CustomedStyle.roundedBtn(CustomedColors.kgold)),
      top: CustomedSize.kpositionTop,
      left: CustomedSize.kpositionLeft,
      height: 50,
      width: 50,
    );
  }
}
