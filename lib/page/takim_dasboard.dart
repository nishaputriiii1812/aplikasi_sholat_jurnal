import 'package:aplikasi_sholat_jurnal/models/nisha_item_page.dart';
import 'package:aplikasi_sholat_jurnal/page/takim_home.dart';
import 'package:aplikasi_sholat_jurnal/page/takim_jurnal.dart';
import 'package:aplikasi_sholat_jurnal/page/takim_komunitas.dart';
import 'package:flutter/material.dart';

import '../models/nisha_item_page.dart';

class TakimDasboard extends StatefulWidget {
  const TakimDasboard({super.key});

  @override
  State<TakimDasboard> createState() => _TakimDashboardState();
}

class _TakimDashboardState extends State<TakimDasboard> {
  int selectedIndex = 0;
  Map<int, NishaItemPage> pages = {
    0: NishaItemPage(
      page: TakimHome(),
      icon: Icons.home,
      label: 'HOME',
      color: Colors.white,
    ),
    1: NishaItemPage(
      page: TakimJurnal(),
      icon: Icons.book,
      label: 'JURNAL',
      color: Colors.white,
    ),
    2: NishaItemPage(
      page: TakimKomunitas(),
      icon: Icons.people,
      label: 'KOMUNITAS',
      color: Colors.white,
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.blueAccent,
        unselectedItemColor: Colors.blueGrey,
        unselectedLabelStyle: TextStyle(color: Colors.blueAccent),
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },

        items: pages.entries
            .map(
              (d) => BottomNavigationBarItem(
                icon: Icon(d.value.icon),
                label: d.value.label,
                activeIcon: Icon(d.value.icon, color: Colors.black87),
              ),
            )
            .toList(),
      ),
      body: pages[selectedIndex]!.page,
    );
  }
}
