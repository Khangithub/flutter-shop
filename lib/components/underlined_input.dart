import 'package:flutter/material.dart';
import 'package:shop/const/colors.dart';

// ignore: must_be_immutable
class UnderlinedInput extends StatefulWidget {
  final String placeholder;
  // final Function() onChange;
  final Icon icon;
  final bool isPwd;

  const UnderlinedInput(
      {Key? key,
      required this.placeholder,
      required this.icon,
      // required this.onChange,
      required this.isPwd})
      : super(key: key);

  @override
  State<UnderlinedInput> createState() => _UnderlinedInputState();
}

class _UnderlinedInputState extends State<UnderlinedInput> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1, color: CustomedColors.$black),
      )),
      child: TextField(
        obscureText: widget.isPwd,
        controller: null,
        decoration: InputDecoration(
            hintText: widget.placeholder,
            prefixIcon: IconButton(
              onPressed: null,
              icon: widget.icon,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
