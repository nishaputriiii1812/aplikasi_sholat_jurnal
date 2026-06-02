import 'package:aplikasi_sholat_jurnal/nisha_splash.dart';
import 'package:aplikasi_sholat_jurnal/page/takim_dasboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Nisha());
}

class Nisha extends StatefulWidget {
  const Nisha({super.key});

  @override
  State<Nisha> createState() => _NishaState();
}

class _NishaState extends State<Nisha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TakimDasboard());
  }
}
