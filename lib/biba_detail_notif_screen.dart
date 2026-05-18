import 'package:flutter/material.dart';

class BibaDetailNotifScreen extends StatefulWidget {
  const BibaDetailNotifScreen({super.key});

  @override
  State<BibaDetailNotifScreen> createState() => _BibaDetailNotifScreenState();
}

class _BibaDetailNotifScreenState extends State<BibaDetailNotifScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white, Colors.indigo]),
          ),
        ),
        title: Text('Notif', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center),
      ),
    );
  }
}
