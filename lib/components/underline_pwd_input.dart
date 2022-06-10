import 'package:flutter/material.dart';
import 'package:shop/const/colors.dart';

// ignore: must_be_immutable
class UnderlinedPwdInput extends StatefulWidget {
  final String placeholder;
  final Icon icon;
  TextEditingController? txtCtrl;
  dynamic Function(String)? onChanged;

  UnderlinedPwdInput({
    Key? key,
    required this.placeholder,
    required this.icon,
    this.onChanged,
    this.txtCtrl
  }) : super(key: key);

  @override
  State<UnderlinedPwdInput> createState() => _UnderlinedPwdInputState();
}

class _UnderlinedPwdInputState extends State<UnderlinedPwdInput> {
  bool isObsercure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1, color: CustomedColors.$black),
      )),
      child: TextField(
        obscureText: isObsercure,
        controller: widget.txtCtrl,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            hintText: widget.placeholder,
            prefixIcon: IconButton(
              onPressed: null,
              icon: widget.icon,
            ),
            suffixIcon: IconButton(
              icon: Icon(isObsercure ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  isObsercure = !isObsercure;
                });
              },
            ),
            border: InputBorder.none),
      ),
    );
  }
}
