import 'package:flutter/material.dart';

class BibaKebijakanAplikasi extends StatefulWidget {
  const BibaKebijakanAplikasi({super.key});

  @override
  State<BibaKebijakanAplikasi> createState() => _BibaKebijakanAplikasiState();
}

class _BibaKebijakanAplikasiState extends State<BibaKebijakanAplikasi> {
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
              "[app.rpl10@gmail.com][Jurnal sholat  Berkomitmen melindungi privasi Anda Kami mengumpulkan informasi seperti  nama dan email hanya untuk keperluan layanan kami tidak menjual data anda ke pihak ketiga.",
            ),
          ),
        ),
      ),
    );
  }
}
