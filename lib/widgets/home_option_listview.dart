// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:shop/const/customed_colors.dart';
import 'package:shop/const/customed_style.dart';

class OptionListView extends StatelessWidget {
  OptionListView({
    Key? key,
  }) : super(key: key);

  final options = <String>[
    "Meat, Vegetables",
    "Groceries",
    "House",
    "Electronic",
    "Digital Device",
    "Phone",
    "Mother & Baby",
    "Beautify",
    "Appliances",
    "Women's Fashion",
    "Men's Fashion",
    "Women's shoes",
    "Female bag",
    "Men's shoes",
    "Boy'sf pocket",
    "Backpack & Suitcase",
    "Accessory",
    "Clock",
    "Laptop",
    "International",
    "Voucher",
    "Car",
    "Book",
    "Sport",
    "Camera"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: options.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(right: 3),
              child: TextButton(
                  onPressed: null, 
                  child: Text(
                    options[index],
                    style: TextStyle(color: CustomedColors.kwhite),
                  ),
                  style: CustomedStyle.kroundedBtn(CustomedColors.kamber700)),
            );
          }),
    );
  }
}
