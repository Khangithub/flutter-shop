import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: TextButton(onPressed: () => Navigator.pushNamed(context, '/login'), child: Text('data')));
  }
}