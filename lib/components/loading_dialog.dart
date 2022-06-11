// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:shop/const/customed_colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 10,
        width: 10,
        color: CustomedColors.ktransparent,
        child: Center(
          child: SpinKitRotatingCircle(
            color: CustomedColors.kwhite,
            size: 120.0,
          ),
        ));
  }
}
