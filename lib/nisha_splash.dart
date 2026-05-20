import 'dart:async';

import 'package:aplikasi_sholat_jurnal/nisha_login.dart';
import 'package:flutter/material.dart';


class NishaSplash extends StatefulWidget {
  const NishaSplash({super.key});

  @override
  State<NishaSplash> createState() => _NishaSplashScreenState();
}

class _NishaSplashScreenState extends State<NishaSplash> {
  late Timer n;
  @override
  void initState() {
    n = Timer.periodic(
      const Duration(seconds: 2),
          (timer) => Navigator.pushReplacement( 
        context,
        MaterialPageRoute(builder: (context) => NishaLogin()),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    n.cancel();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/download (15).jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SELAMAT DATANG",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "DI JURNAL SHOLAT",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
              SizedBox(height: 150),
              ClipOval(
                child: Image.asset(
                  'assets/images/download (17).jpg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ],
        ),
      ),

    );
  }
}