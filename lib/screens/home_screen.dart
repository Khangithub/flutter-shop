// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop/components/home_carousel.dart';
import 'package:shop/const/customed_colors.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomedColors.kamber400,
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: CustomedColors.kamber400,
        leading: Text('FREESHIP',
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: CustomedColors.kwhite)),
        leadingWidth: 100,
        title: Text(
          'TIKI',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: CustomedColors.kwhite),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: null,
              icon: Icon(
                FontAwesomeIcons.bell,
                color: CustomedColors.kwhite,
              )),
          IconButton(
              onPressed: null,
              icon: Icon(
                FontAwesomeIcons.cartShopping,
                color: CustomedColors.kwhite,
              ))
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: CustomedColors.kwhite,
                  borderRadius: BorderRadius.circular(10.0)),
              child: const TextField(
                obscureText: false,
                decoration: InputDecoration(
                    hintText: 'Bạn tìm gì hôm nay?',
                    prefixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.search_outlined),
                    ),
                    border: InputBorder.none),
              ),
            ),
            HomeCarousel()
          ],
        ),
      ),
    );
  }
}

