import 'package:aplikasi_sholat_jurnal/model/item_page.dart';
import 'package:aplikasi_sholat_jurnal/page/takim_home.dart';
import 'package:flutter/material.dart';


class TakimDasboard extends StatefulWidget {
  const TakimDasboard({super.key});

  @override
  State<TakimDasboard> createState() => _TakimDasboardState();
}

class _TakimDasboardState extends State<TakimDasboard> {
  int selectedIndex = 0;
  Map<int,ItemPage> menu = {
    0: ItemPage(
        page: TakimDasboard(),
        icon: Icons.home,
        label: "rumah",
        colors: Colors.black87,
    ),
    1: ItemPage(
      page: TakimHome(),
      icon: Icons.home,
      label: "---",
      colors: Colors.white,
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.blueAccent,
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: menu.entries
            .map(
              (d) => BottomNavigationBarItem(
            icon: Icon(d.value.icon),
            label: d.value.label,
            activeIcon: Icon(d.value.icon, color: Colors.orange),
          ),
        )
            .toList(),
      ),
      body: menu[selectedIndex]!.page,

    );
  }
}
