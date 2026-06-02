import 'package:flutter/material.dart';

class BibaTentangAplikasi extends StatefulWidget {
  const BibaTentangAplikasi({super.key});

  @override
  State<BibaTentangAplikasi> createState() => _BibaTentangAplikasiState();
}

class _BibaTentangAplikasiState extends State<BibaTentangAplikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const SingleChildScrollView(
            child: Text(
              "Aplikasi Jurnal Sholat adalah sebuah platform digital yang dirancang untuk membantu pengguna mencatat,memantau, dan meningkatkan konsistensi ibadah sholat mereka. ",
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
          ),
        ),
      ),
    );
  }
}
