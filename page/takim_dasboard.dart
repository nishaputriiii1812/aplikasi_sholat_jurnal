import 'package:flutter/material.dart';

import 'takim_home.dart';

class TakimDasboard extends StatefulWidget {
  const TakimDasboard({super.key});

  @override
  State<TakimDasboard> createState() => _TakimDasboardState();
}

class _TakimDasboardState extends State<TakimDasboard> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    TakimHome(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar:
      BottomNavigationBar(
        currentIndex: _currentIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.green,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
        items:   [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),label: "Home",
        ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),label: "Book",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),label: "Komunitas",
          ),
        ],
      ),
    );
  }
}
