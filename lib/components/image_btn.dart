import 'package:flutter/material.dart';
import 'package:shop/const/colors.dart';

class ImageBtn extends StatelessWidget {
  final String imageUrl;
  final String text;

  const ImageBtn({Key? key, required this.imageUrl, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: CustomedColors.$gray, // red as border color
        ),
      ),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Image.asset(imageUrl),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
