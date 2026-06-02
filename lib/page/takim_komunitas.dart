import 'package:flutter/material.dart';

class TakimKomunitas extends StatefulWidget {
  const TakimKomunitas({super.key});

  @override
  State<TakimKomunitas> createState() => _TakimKomunitasState();
}

class _TakimKomunitasState extends State<TakimKomunitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle,
              size: 80,
              color: Colors.blue[300],
            ),
            const SizedBox(height: 24),
            Text(
              'Masih Belum',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w800,
                color: Colors.blue[400],
                height: 1.3,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Halaman ini sedang dalam proses pengerjaan.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.blueGrey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}