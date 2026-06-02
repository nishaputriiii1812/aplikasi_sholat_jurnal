import 'package:flutter/material.dart';

class BibaSyaratDanKetentuan extends StatefulWidget {
  const BibaSyaratDanKetentuan({super.key});

  @override
  State<BibaSyaratDanKetentuan> createState() => _BibaSyaratDanKetentuanState();
}

class _BibaSyaratDanKetentuanState extends State<BibaSyaratDanKetentuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syarat dan Ketentuan'),
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
              "Syarat dan Ketentuan Jurnal Sholat.1.Tujuan jurnal Jurnal sholat ini dibuat untuk membantu peserta memantau,mengevaluasi,dan meningkatkan konsistensi ibadah sholat wajib maupun sunnah.  ",
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
          ),
        ),
      ),
    );
  }
}
