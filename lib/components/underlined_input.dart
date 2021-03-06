import 'package:flutter/material.dart';
import 'package:shop/const/customed_colors.dart';
import 'package:shop/const/customed_size.dart';

// ignore: must_be_immutable
class UnderlinedInput extends StatefulWidget {
  final String placeholder;
  // final Function() onChange;
  final Icon icon;
  TextEditingController? txtCtrl;
  dynamic Function(String)? onChanged;

  UnderlinedInput(
      {Key? key,
      required this.placeholder,
      required this.icon,
      this.onChanged,
      this.txtCtrl})
      : super(key: key);

  @override
  State<UnderlinedInput> createState() => _UnderlinedInputState();
}

class _UnderlinedInputState extends State<UnderlinedInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: CustomedSize.kwidth,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1, color: CustomedColors.kblack),
      )),
      child: TextField(
        obscureText: false,
        controller: widget.txtCtrl,
        onChanged: widget.onChanged,
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
