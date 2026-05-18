import 'package:aplikasi_sholat_jurnal/widget/biba_notif.dart';
import 'package:flutter/material.dart';

import 'biba_profile_page.dart';

class TakimHome extends StatefulWidget {
  const TakimHome({super.key});

  @override
  State<TakimHome> createState() => _TakimHomeState();
}

class _TakimHomeState extends State<TakimHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueGrey, Colors.blueAccent],
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BibaNotif()),
                ),
                icon: Icon(Icons.notifications, color: Colors.white),
              ),
              IconButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BibaProfilePage()),
                ),
                icon: Icon(Icons.person, color: Colors.white),
              ),
            ],
        ),

    );

  }
}
