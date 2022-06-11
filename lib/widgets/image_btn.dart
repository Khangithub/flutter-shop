import 'package:flutter/material.dart';
import 'package:shop/const/customed_colors.dart';
import 'package:shop/const/customed_size.dart';

class ImageBtn extends StatelessWidget {
  final String imageUrl;
  final String text;

  const ImageBtn({Key? key, required this.imageUrl, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: CustomedSize.kwidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: CustomedColors.kgrey, // red as border color
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Image.asset(
            imageUrl,
            height: 30,
            width: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
