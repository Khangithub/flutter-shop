// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// ignore: must_be_immutable
class LoadingScreen extends StatelessWidget {
  final BuildContext context;
  final bool isLogin;

  const LoadingScreen({required this.context, required this.isLogin, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('object $isLogin');
    
    return Container(
      height: 10,
      width: 10,
      color: Colors.transparent,
      child: const Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 120.0,
        ),
      ),
    );
  }
}
