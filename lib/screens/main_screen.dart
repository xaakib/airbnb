import 'package:flutter/material.dart';

import 'explor_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExplorScreen(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(.30),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
            title: Text('Explore'),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text('Saved'),
            icon: Icon(Icons.hearing_outlined),
          ),
          BottomNavigationBarItem(
            title: Text('Tips'),
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            title: Text('Inbox'),
            icon: Icon(Icons.masks_sharp),
          ),
        ],
      ),
    );
  }
}
