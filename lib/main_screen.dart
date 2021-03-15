import 'package:airbnb/screens/inbox_screen.dart';
import 'package:airbnb/screens/profile_screen.dart';
import 'package:airbnb/screens/saved_screen.dart';
import 'package:airbnb/screens/tips_screen.dart';
import 'package:flutter/material.dart';

import 'screens/explor_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  List listOfScreen = [
    ExplorScreen(),
    SavedScreen(),
    TipsScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfScreen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black.withOpacity(.30),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Saved',
            icon: Icon(Icons.hearing_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Tips',
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: 'Inbox',
            icon: Icon(Icons.masks_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.people),
          ),
        ],
      ),
    );
  }
}
