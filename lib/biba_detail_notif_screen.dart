import 'package:flutter/material.dart';

class BibaDetailNotifScreen extends StatefulWidget {
  final String judul;
  final String notifikasi;
  final String imageUrl;

  const BibaDetailNotifScreen({
    super.key,
    required this.judul,
    required this.notifikasi,
    required this.imageUrl,
  });

  @override
  State<BibaDetailNotifScreen> createState() => _BibaDetailNotifScheenState();
}

class _BibaDetailNotifScheenState extends State<BibaDetailNotifScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.redAccent],
            ),
          ),
        ),
        title: Text("Detail Notifikasi", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.judul,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.network(widget.imageUrl),
            Text(widget.notifikasi, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

