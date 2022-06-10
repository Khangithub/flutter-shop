// ignore_for_file: avoid_print, depend_on_referenced_packages, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _selectedIndex = 0;

static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
     Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
  ];
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house, size: _selectedIndex == 0 ? 30 : 20,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.box, size: _selectedIndex == 1 ? 30 : 20,),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.fireFlameCurved, size: _selectedIndex == 2 ? 30 : 20,),
            label: 'Quick View',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidComment, size: _selectedIndex == 3 ? 30 : 20,),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidUser, size: _selectedIndex == 4 ? 30 : 20,),
            label: 'Info',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue.shade900,
        onTap: _onItemTapped,
      ),
    );
  }
}
